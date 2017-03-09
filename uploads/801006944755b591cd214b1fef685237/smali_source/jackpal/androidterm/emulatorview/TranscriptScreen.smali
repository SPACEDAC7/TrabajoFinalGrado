.class Ljackpal/androidterm/emulatorview/TranscriptScreen;
.super Ljava/lang/Object;
.source "TranscriptScreen.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/Screen;


# instance fields
.field private mColumns:I

.field private mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

.field private mScreenRows:I

.field private mTotalRows:I


# direct methods
.method public constructor <init>(IIILjackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 6
    .param p1, "columns"    # I
    .param p2, "totalRows"    # I
    .param p3, "screenRows"    # I
    .param p4, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget v0, Ljackpal/androidterm/emulatorview/TextStyle;->kNormalTextStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->init(IIII)V

    .line 59
    return-void
.end method

.method private init(IIII)V
    .registers 12
    .param p1, "columns"    # I
    .param p2, "totalRows"    # I
    .param p3, "screenRows"    # I
    .param p4, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    iput p1, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mColumns:I

    .line 63
    iput p2, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mTotalRows:I

    .line 64
    iput p3, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    .line 66
    new-instance v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-direct {v0, p1, p2, p3, p4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;-><init>(IIII)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    .line 67
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    iget v3, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mColumns:I

    iget v4, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    const/16 v5, 0x20

    move v2, v1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockSet(IIIIII)V

    .line 68
    return-void
.end method

.method private internalGetTranscriptText(Ljackpal/androidterm/emulatorview/GrowableIntArray;IIII)Ljava/lang/String;
    .registers 27
    .param p1, "colors"    # Ljackpal/androidterm/emulatorview/GrowableIntArray;
    .param p2, "selX1"    # I
    .param p3, "selY1"    # I
    .param p4, "selX2"    # I
    .param p5, "selY2"    # I

    .prologue
    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    .line 334
    .local v6, "data":Ljackpal/androidterm/emulatorview/UnicodeTranscript;
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mColumns:I

    .line 336
    .local v5, "columns":I
    const/4 v15, 0x0

    .line 337
    .local v15, "rowColorBuffer":Ljackpal/androidterm/emulatorview/StyleRow;
    invoke-virtual {v6}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, p3

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    .line 338
    invoke-virtual {v6}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 p3, v0

    .line 340
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move/from16 v19, v0

    move/from16 v0, p5

    move/from16 v1, v19

    if-lt v0, v1, :cond_3a

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move/from16 v19, v0

    add-int/lit8 p5, v19, -0x1

    .line 343
    :cond_3a
    move/from16 v14, p3

    .local v14, "row":I
    :goto_3c
    move/from16 v0, p5

    if-gt v14, v0, :cond_152

    .line 344
    const/16 v17, 0x0

    .line 346
    .local v17, "x1":I
    move/from16 v0, p3

    if-ne v14, v0, :cond_48

    .line 347
    move/from16 v17, p2

    .line 349
    :cond_48
    move/from16 v0, p5

    if-ne v14, v0, :cond_93

    .line 350
    add-int/lit8 v18, p4, 0x1

    .line 351
    .local v18, "x2":I
    move/from16 v0, v18

    if-le v0, v5, :cond_54

    .line 352
    move/from16 v18, v5

    .line 357
    :cond_54
    :goto_54
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v14, v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(III)[C

    move-result-object v12

    .line 358
    .local v12, "line":[C
    if-eqz p1, :cond_66

    .line 359
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v14, v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineColor(III)Ljackpal/androidterm/emulatorview/StyleRow;

    move-result-object v15

    .line 361
    :cond_66
    if-nez v12, :cond_96

    .line 362
    invoke-virtual {v6, v14}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineWrap(I)Z

    move-result v19

    if-nez v19, :cond_90

    move/from16 v0, p5

    if-ge v14, v0, :cond_90

    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_90

    .line 363
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    if-eqz p1, :cond_90

    .line 365
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/GrowableIntArray;->append(I)V

    .line 343
    :cond_90
    :goto_90
    add-int/lit8 v14, v14, 0x1

    goto :goto_3c

    .line 355
    .end local v12    # "line":[C
    .end local v18    # "x2":I
    :cond_93
    move/from16 v18, v5

    .restart local v18    # "x2":I
    goto :goto_54

    .line 370
    .restart local v12    # "line":[C
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getDefaultStyle()I

    move-result v7

    .line 371
    .local v7, "defaultColor":I
    const/4 v11, -0x1

    .line 372
    .local v11, "lastPrintingChar":I
    array-length v13, v12

    .line 374
    .local v13, "lineLen":I
    const/4 v4, 0x0

    .line 375
    .local v4, "column":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a4
    if-ge v9, v13, :cond_aa

    .line 376
    aget-char v3, v12, v9

    .line 377
    .local v3, "c":C
    if-nez v3, :cond_ed

    .line 398
    .end local v3    # "c":C
    :cond_aa
    invoke-virtual {v6, v14}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineWrap(I)Z

    move-result v19

    if-eqz v19, :cond_bc

    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v11, v0, :cond_bc

    move/from16 v0, v18

    if-ne v0, v5, :cond_bc

    .line 400
    add-int/lit8 v11, v9, -0x1

    .line 402
    :cond_bc
    const/16 v19, 0x0

    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v12, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 403
    if-eqz p1, :cond_128

    .line 404
    if-eqz v15, :cond_113

    .line 405
    const/4 v4, 0x0

    .line 406
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_cd
    if-gt v10, v11, :cond_128

    .line 407
    invoke-virtual {v15, v4}, Ljackpal/androidterm/emulatorview/StyleRow;->get(I)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/GrowableIntArray;->append(I)V

    .line 408
    invoke-static {v12, v10}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth([CI)I

    move-result v19

    add-int v4, v4, v19

    .line 409
    aget-char v19, v12, v10

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v19

    if-eqz v19, :cond_ea

    .line 410
    add-int/lit8 v10, v10, 0x1

    .line 406
    :cond_ea
    add-int/lit8 v10, v10, 0x1

    goto :goto_cd

    .line 381
    .end local v10    # "j":I
    .restart local v3    # "c":C
    :cond_ed
    move/from16 v16, v7

    .line 383
    .local v16, "style":I
    if-eqz v15, :cond_f5

    .line 384
    :try_start_f1
    invoke-virtual {v15, v4}, Ljackpal/androidterm/emulatorview/StyleRow;->get(I)I
    :try_end_f4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f1 .. :try_end_f4} :catch_10f

    move-result v16

    .line 391
    :cond_f5
    :goto_f5
    const/16 v19, 0x20

    move/from16 v0, v19

    if-ne v3, v0, :cond_ff

    move/from16 v0, v16

    if-eq v0, v7, :cond_100

    .line 392
    :cond_ff
    move v11, v9

    .line 394
    :cond_100
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v19

    if-nez v19, :cond_10c

    .line 395
    invoke-static {v12, v9}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth([CI)I

    move-result v19

    add-int v4, v4, v19

    .line 375
    :cond_10c
    add-int/lit8 v9, v9, 0x1

    goto :goto_a4

    .line 386
    :catch_10f
    move-exception v8

    .line 388
    .local v8, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move/from16 v16, v7

    goto :goto_f5

    .line 414
    .end local v3    # "c":C
    .end local v8    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v16    # "style":I
    :cond_113
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_114
    if-gt v10, v11, :cond_128

    .line 415
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljackpal/androidterm/emulatorview/GrowableIntArray;->append(I)V

    .line 416
    aget-char v3, v12, v10

    .line 417
    .restart local v3    # "c":C
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v19

    if-eqz v19, :cond_125

    .line 418
    add-int/lit8 v10, v10, 0x1

    .line 414
    :cond_125
    add-int/lit8 v10, v10, 0x1

    goto :goto_114

    .line 423
    .end local v3    # "c":C
    .end local v10    # "j":I
    :cond_128
    invoke-virtual {v6, v14}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineWrap(I)Z

    move-result v19

    if-nez v19, :cond_90

    move/from16 v0, p5

    if-ge v14, v0, :cond_90

    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_90

    .line 424
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    if-eqz p1, :cond_90

    .line 426
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/GrowableIntArray;->append(I)V

    goto/16 :goto_90

    .line 430
    .end local v4    # "column":I
    .end local v7    # "defaultColor":I
    .end local v9    # "i":I
    .end local v11    # "lastPrintingChar":I
    .end local v12    # "line":[C
    .end local v13    # "lineLen":I
    .end local v17    # "x1":I
    .end local v18    # "x2":I
    :cond_152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19
.end method


# virtual methods
.method public blockCopy(IIIIII)V
    .registers 14
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .prologue
    .line 132
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockCopy(IIIIII)V

    .line 133
    return-void
.end method

.method public blockSet(IIIIII)V
    .registers 14
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "val"    # I
    .param p6, "style"    # I

    .prologue
    .line 149
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockSet(IIIIII)V

    .line 150
    return-void
.end method

.method public final drawText(ILandroid/graphics/Canvas;FFLjackpal/androidterm/emulatorview/TextRenderer;IIILjava/lang/String;I)V
    .registers 68
    .param p1, "row"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "renderer"    # Ljackpal/androidterm/emulatorview/TextRenderer;
    .param p6, "cx"    # I
    .param p7, "selx1"    # I
    .param p8, "selx2"    # I
    .param p9, "imeText"    # Ljava/lang/String;
    .param p10, "cursorMode"    # I

    .prologue
    .line 170
    const/16 v27, 0x1

    .line 172
    .local v27, "cursorWidth":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(I)[C

    move-result-object v19

    .line 173
    .local v19, "line":[C
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineColor(I)Ljackpal/androidterm/emulatorview/StyleRow;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_15} :catch_70
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_15} :catch_72

    move-result-object v44

    .line 182
    .local v44, "color":Ljackpal/androidterm/emulatorview/StyleRow;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getDefaultStyle()I

    move-result v12

    .line 184
    .local v12, "defaultStyle":I
    if-nez v19, :cond_74

    .line 186
    move/from16 v0, p7

    move/from16 v1, p8

    if-eq v0, v1, :cond_49

    .line 188
    sub-int v2, p8, p7

    new-array v8, v2, [C

    .line 189
    .local v8, "blank":[C
    const/16 v2, 0x20

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 190
    sub-int v7, p8, p7

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    move/from16 v13, p6

    move/from16 v17, p10

    invoke-interface/range {v2 .. v17}, Ljackpal/androidterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    .line 194
    .end local v8    # "blank":[C
    :cond_49
    const/4 v2, -0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_6f

    .line 195
    const/4 v2, 0x1

    new-array v8, v2, [C

    .line 196
    .restart local v8    # "blank":[C
    const/16 v2, 0x20

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 198
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v13, p6

    move/from16 v17, p10

    invoke-interface/range {v2 .. v17}, Ljackpal/androidterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    .line 295
    .end local v8    # "blank":[C
    .end local v12    # "defaultStyle":I
    .end local v19    # "line":[C
    .end local v44    # "color":Ljackpal/androidterm/emulatorview/StyleRow;
    :cond_6f
    :goto_6f
    return-void

    .line 174
    :catch_70
    move-exception v48

    .line 176
    .local v48, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_6f

    .line 177
    .end local v48    # "e":Ljava/lang/IllegalArgumentException;
    :catch_72
    move-exception v48

    .line 180
    .local v48, "e":Ljava/lang/NullPointerException;
    goto :goto_6f

    .line 206
    .end local v48    # "e":Ljava/lang/NullPointerException;
    .restart local v12    # "defaultStyle":I
    .restart local v19    # "line":[C
    .restart local v44    # "color":Ljackpal/androidterm/emulatorview/StyleRow;
    :cond_74
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mColumns:I

    move/from16 v46, v0

    .line 207
    .local v46, "columns":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v52, v0

    .line 208
    .local v52, "lineLen":I
    const/16 v23, 0x0

    .line 209
    .local v23, "lastStyle":I
    const/16 v22, 0x0

    .line 210
    .local v22, "lastSelectionStyle":Z
    const/16 v18, 0x0

    .line 211
    .local v18, "runWidth":I
    const/16 v17, -0x1

    .line 212
    .local v17, "lastRunStart":I
    const/16 v20, -0x1

    .line 213
    .local v20, "lastRunStartIndex":I
    const/16 v49, 0x0

    .line 214
    .local v49, "forceFlushRun":Z
    const/16 v45, 0x0

    .line 215
    .local v45, "column":I
    const/16 v53, 0x0

    .line 216
    .local v53, "nextColumn":I
    const/16 v47, 0x0

    .line 217
    .local v47, "displayCharWidth":I
    const/16 v51, 0x0

    .line 218
    .local v51, "index":I
    const/16 v25, 0x0

    .line 219
    .local v25, "cursorIndex":I
    const/16 v26, 0x0

    .line 220
    .local v26, "cursorIncr":I
    :cond_97
    :goto_97
    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_136

    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_136

    aget-char v2, v19, v51

    if-eqz v2, :cond_136

    .line 221
    const/16 v50, 0x1

    .line 223
    .local v50, "incr":I
    aget-char v2, v19, v51

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 224
    move-object/from16 v0, v19

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth([CI)I

    move-result v56

    .line 225
    .local v56, "width":I
    add-int/lit8 v50, v50, 0x1

    .line 229
    :goto_bb
    if-lez v56, :cond_c1

    .line 231
    move/from16 v45, v53

    .line 232
    move/from16 v47, v56

    .line 234
    :cond_c1
    invoke-virtual/range {v44 .. v45}, Ljackpal/androidterm/emulatorview/StyleRow;->get(I)I

    move-result v55

    .line 235
    .local v55, "style":I
    const/16 v54, 0x0

    .line 236
    .local v54, "selectionStyle":Z
    move/from16 v0, v45

    move/from16 v1, p7

    if-ge v0, v1, :cond_d8

    const/4 v2, 0x2

    move/from16 v0, v47

    if-ne v0, v2, :cond_e0

    add-int/lit8 v2, p7, -0x1

    move/from16 v0, v45

    if-ne v0, v2, :cond_e0

    :cond_d8
    move/from16 v0, v45

    move/from16 v1, p8

    if-gt v0, v1, :cond_e0

    .line 239
    const/16 v54, 0x1

    .line 241
    :cond_e0
    move/from16 v0, v55

    move/from16 v1, v23

    if-ne v0, v1, :cond_f0

    move/from16 v0, v54

    move/from16 v1, v22

    if-ne v0, v1, :cond_f0

    if-lez v56, :cond_10f

    if-eqz v49, :cond_10f

    .line 244
    :cond_f0
    if-ltz v17, :cond_103

    .line 245
    sub-int v21, v51, v20

    move-object/from16 v13, p5

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v24, p6

    move/from16 v28, p10

    invoke-interface/range {v13 .. v28}, Ljackpal/androidterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    .line 251
    :cond_103
    move/from16 v23, v55

    .line 252
    move/from16 v22, v54

    .line 253
    const/16 v18, 0x0

    .line 254
    move/from16 v17, v45

    .line 255
    move/from16 v20, v51

    .line 256
    const/16 v49, 0x0

    .line 258
    :cond_10f
    move/from16 v0, p6

    move/from16 v1, v45

    if-ne v0, v1, :cond_11d

    .line 259
    if-lez v56, :cond_133

    .line 260
    move/from16 v25, v51

    .line 261
    move/from16 v26, v50

    .line 262
    move/from16 v27, v56

    .line 268
    :cond_11d
    :goto_11d
    add-int v18, v18, v56

    .line 269
    add-int v53, v53, v56

    .line 270
    add-int v51, v51, v50

    .line 271
    const/4 v2, 0x1

    move/from16 v0, v56

    if-le v0, v2, :cond_97

    .line 276
    const/16 v49, 0x1

    goto/16 :goto_97

    .line 227
    .end local v54    # "selectionStyle":Z
    .end local v55    # "style":I
    .end local v56    # "width":I
    :cond_12c
    aget-char v2, v19, v51

    invoke-static {v2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v56

    .restart local v56    # "width":I
    goto :goto_bb

    .line 265
    .restart local v54    # "selectionStyle":Z
    .restart local v55    # "style":I
    :cond_133
    add-int v26, v26, v50

    goto :goto_11d

    .line 279
    .end local v50    # "incr":I
    .end local v54    # "selectionStyle":Z
    .end local v55    # "style":I
    .end local v56    # "width":I
    :cond_136
    if-ltz v17, :cond_149

    .line 280
    sub-int v21, v51, v20

    move-object/from16 v13, p5

    move-object/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v24, p6

    move/from16 v28, p10

    invoke-interface/range {v13 .. v28}, Ljackpal/androidterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    .line 287
    :cond_149
    if-ltz p6, :cond_6f

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6f

    .line 288
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v46

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 289
    .local v33, "imeLength":I
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v35, v2, v33

    .line 290
    .local v35, "imeOffset":I
    sub-int v2, v46, v33

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 291
    .local v32, "imePosition":I
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v34

    const/16 v37, 0x1

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljackpal/androidterm/emulatorview/TextStyle;->encode(III)I

    move-result v38

    const/16 v39, -0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v28, p5

    move-object/from16 v29, p2

    move/from16 v30, p3

    move/from16 v31, p4

    move/from16 v36, v33

    invoke-interface/range {v28 .. v43}, Ljackpal/androidterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZIIIIII)V

    goto/16 :goto_6f
.end method

.method public fastResize(II[I)Z
    .registers 6
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .param p3, "cursor"    # [I

    .prologue
    const/4 v0, 0x1

    .line 434
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    if-nez v1, :cond_6

    .line 443
    :goto_5
    return v0

    .line 438
    :cond_6
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v1, p1, p2, p3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->resize(II[I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 439
    iput p1, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mColumns:I

    .line 440
    iput p2, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    goto :goto_5

    .line 443
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    .line 83
    return-void
.end method

.method public getActiveRows()I
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getActiveRows()I

    move-result v0

    return v0
.end method

.method public getActiveTranscriptRows()I
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v0

    return v0
.end method

.method getScriptLine(I)[C
    .registers 5
    .param p1, "row"    # I

    .prologue
    const/4 v1, 0x0

    .line 465
    :try_start_1
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v2, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(I)[C
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_a

    move-result-object v1

    .line 473
    :goto_7
    return-object v1

    .line 467
    :catch_8
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_7

    .line 471
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method getScriptLineWrap(I)Z
    .registers 3
    .param p1, "row"    # I

    .prologue
    .line 484
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineWrap(I)Z

    move-result v0

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .registers 11
    .param p1, "selX1"    # I
    .param p2, "selY1"    # I
    .param p3, "selX2"    # I
    .param p4, "selY2"    # I

    .prologue
    .line 324
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->internalGetTranscriptText(Ljackpal/androidterm/emulatorview/GrowableIntArray;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(Ljackpal/androidterm/emulatorview/GrowableIntArray;IIII)Ljava/lang/String;
    .registers 7
    .param p1, "colors"    # Ljackpal/androidterm/emulatorview/GrowableIntArray;
    .param p2, "selX1"    # I
    .param p3, "selY1"    # I
    .param p4, "selX2"    # I
    .param p5, "selY2"    # I

    .prologue
    .line 328
    invoke-direct/range {p0 .. p5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->internalGetTranscriptText(Ljackpal/androidterm/emulatorview/GrowableIntArray;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptText()Ljava/lang/String;
    .registers 7

    .prologue
    .line 316
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v0

    neg-int v3, v0

    iget v4, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mColumns:I

    iget v5, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->internalGetTranscriptText(Ljackpal/androidterm/emulatorview/GrowableIntArray;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptText(Ljackpal/androidterm/emulatorview/GrowableIntArray;)Ljava/lang/String;
    .registers 8
    .param p1, "colors"    # Ljackpal/androidterm/emulatorview/GrowableIntArray;

    .prologue
    .line 320
    const/4 v2, 0x0

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v0

    neg-int v3, v0

    iget v4, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mColumns:I

    iget v5, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->internalGetTranscriptText(Ljackpal/androidterm/emulatorview/GrowableIntArray;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isBasicLine(I)Z
    .registers 3
    .param p1, "row"    # I

    .prologue
    .line 492
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    if-eqz v0, :cond_b

    .line 493
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->isBasicLine(I)Z

    move-result v0

    .line 495
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public resize(III)V
    .registers 5
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .param p3, "style"    # I

    .prologue
    .line 449
    iget v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mTotalRows:I

    if-le p2, v0, :cond_6

    .line 450
    iput p2, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mTotalRows:I

    .line 452
    :cond_6
    iget v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mTotalRows:I

    invoke-direct {p0, p1, v0, p2, p3}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->init(IIII)V

    .line 453
    return-void
.end method

.method public scroll(III)V
    .registers 5
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "style"    # I

    .prologue
    .line 115
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->scroll(III)V

    .line 116
    return-void
.end method

.method public set(IIBI)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "b"    # B
    .param p4, "style"    # I

    .prologue
    .line 103
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(IIII)Z

    .line 104
    return-void
.end method

.method public set(IIII)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "codePoint"    # I
    .param p4, "style"    # I

    .prologue
    .line 99
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(IIII)Z

    .line 100
    return-void
.end method

.method public setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 4
    .param p1, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    .line 71
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    sget v1, Ljackpal/androidterm/emulatorview/TextStyle;->kNormalTextStyle:I

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setDefaultStyle(I)V

    .line 72
    return-void
.end method

.method public setLineWrap(I)V
    .registers 3
    .param p1, "row"    # I

    .prologue
    .line 86
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TranscriptScreen;->mData:Ljackpal/androidterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setLineWrap(I)V

    .line 87
    return-void
.end method
