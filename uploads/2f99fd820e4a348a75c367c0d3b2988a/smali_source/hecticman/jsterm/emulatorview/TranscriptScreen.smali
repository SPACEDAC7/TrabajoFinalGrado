.class Lhecticman/jsterm/emulatorview/TranscriptScreen;
.super Ljava/lang/Object;
.source "TranscriptScreen.java"

# interfaces
.implements Lhecticman/jsterm/emulatorview/Screen;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranscriptScreen"


# instance fields
.field private mColumns:I

.field private mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

.field private mScreenRows:I

.field private mTotalRows:I


# direct methods
.method public constructor <init>(IIILhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 11
    .param p1, "columns"    # I
    .param p2, "totalRows"    # I
    .param p3, "screenRows"    # I
    .param p4, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p4}, Lhecticman/jsterm/emulatorview/ColorScheme;->getForeColorIndex()I

    move-result v4

    invoke-virtual {p4}, Lhecticman/jsterm/emulatorview/ColorScheme;->getBackColorIndex()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->init(IIIII)V

    .line 63
    return-void
.end method

.method private init(IIIII)V
    .registers 14
    .param p1, "columns"    # I
    .param p2, "totalRows"    # I
    .param p3, "screenRows"    # I
    .param p4, "foreColor"    # I
    .param p5, "backColor"    # I

    .prologue
    const/4 v6, 0x0

    .line 66
    iput p1, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mColumns:I

    .line 67
    iput p2, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mTotalRows:I

    .line 68
    iput p3, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    .line 70
    new-instance v0, Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;-><init>(IIIII)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    .line 71
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    iget v3, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mColumns:I

    iget v4, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    const/16 v5, 0x20

    move v1, v6

    move v2, v6

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->blockSet(IIIIIII)V

    .line 72
    return-void
.end method

.method private internalGetTranscriptText(Ljava/lang/StringBuilder;IIII)Ljava/lang/String;
    .registers 23
    .param p1, "colors"    # Ljava/lang/StringBuilder;
    .param p2, "selX1"    # I
    .param p3, "selY1"    # I
    .param p4, "selX2"    # I
    .param p5, "selY2"    # I

    .prologue
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    .line 318
    .local v4, "data":Lhecticman/jsterm/emulatorview/UnicodeTranscript;
    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mColumns:I

    .line 320
    .local v3, "columns":I
    const/4 v12, 0x0

    .line 321
    .local v12, "rowColorBuffer":[B
    invoke-virtual {v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v15

    neg-int v15, v15

    move/from16 v0, p3

    if-ge v0, v15, :cond_1e

    .line 322
    invoke-virtual {v4}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v15

    neg-int v0, v15

    move/from16 p3, v0

    .line 324
    :cond_1e
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move/from16 v0, p5

    if-lt v0, v15, :cond_2c

    .line 325
    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    add-int/lit8 p5, v15, -0x1

    .line 327
    :cond_2c
    move/from16 v11, p3

    .local v11, "row":I
    :goto_2e
    move/from16 v0, p5

    if-le v11, v0, :cond_37

    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 328
    :cond_37
    const/4 v13, 0x0

    .line 330
    .local v13, "x1":I
    move/from16 v0, p3

    if-ne v11, v0, :cond_3e

    .line 331
    move/from16 v13, p2

    .line 333
    :cond_3e
    move/from16 v0, p5

    if-ne v11, v0, :cond_75

    .line 334
    add-int/lit8 v14, p4, 0x1

    .line 335
    .local v14, "x2":I
    if-le v14, v3, :cond_47

    .line 336
    move v14, v3

    .line 341
    :cond_47
    :goto_47
    invoke-virtual {v4, v11, v13, v14}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLine(III)[C

    move-result-object v10

    .line 342
    .local v10, "line":[C
    if-eqz p1, :cond_51

    .line 343
    invoke-virtual {v4, v11, v13, v14}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLineColor(III)[B

    move-result-object v12

    .line 345
    :cond_51
    if-nez v10, :cond_77

    .line 346
    invoke-virtual {v4, v11}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLineWrap(I)Z

    move-result v15

    if-nez v15, :cond_72

    move/from16 v0, p5

    if-ge v11, v0, :cond_72

    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    add-int/lit8 v15, v15, -0x1

    if-ge v11, v15, :cond_72

    .line 347
    const/16 v15, 0xa

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    if-eqz p1, :cond_72

    .line 349
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    :cond_72
    :goto_72
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    .line 339
    .end local v10    # "line":[C
    .end local v14    # "x2":I
    :cond_75
    move v14, v3

    .restart local v14    # "x2":I
    goto :goto_47

    .line 354
    .restart local v10    # "line":[C
    :cond_77
    const/4 v8, -0x1

    .line 355
    .local v8, "lastPrintingChar":I
    array-length v9, v10

    .line 357
    .local v9, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7a
    if-lt v6, v9, :cond_bb

    .line 364
    :cond_7c
    invoke-virtual {v4, v11}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLineWrap(I)Z

    move-result v15

    if-eqz v15, :cond_89

    const/4 v15, -0x1

    if-le v8, v15, :cond_89

    if-ne v14, v3, :cond_89

    .line 366
    add-int/lit8 v8, v6, -0x1

    .line 368
    :cond_89
    const/4 v15, 0x0

    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v10, v15, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 369
    if-eqz p1, :cond_9b

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "column":I
    if-eqz v12, :cond_f7

    .line 372
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_97
    add-int/lit8 v15, v8, 0x1

    if-lt v7, v15, :cond_cb

    .line 389
    .end local v2    # "column":I
    .end local v7    # "j":I
    :cond_9b
    invoke-virtual {v4, v11}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLineWrap(I)Z

    move-result v15

    if-nez v15, :cond_72

    move/from16 v0, p5

    if-ge v11, v0, :cond_72

    move-object/from16 v0, p0

    iget v15, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    add-int/lit8 v15, v15, -0x1

    if-ge v11, v15, :cond_72

    .line 390
    const/16 v15, 0xa

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    if-eqz p1, :cond_72

    .line 392
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 358
    :cond_bb
    aget-char v15, v10, v6

    if-eqz v15, :cond_7c

    .line 360
    aget-char v15, v10, v6

    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v15, v0, :cond_c8

    .line 361
    move v8, v6

    .line 357
    :cond_c8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    .line 373
    .restart local v2    # "column":I
    .restart local v7    # "j":I
    :cond_cb
    aget-byte v15, v12, v2

    int-to-char v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    aget-char v15, v10, v7

    invoke-static {v15}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v15

    if-eqz v15, :cond_ef

    .line 376
    aget-char v15, v10, v7

    add-int/lit8 v16, v7, 0x1

    aget-char v16, v10, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v15

    invoke-static {v15}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v15

    add-int/2addr v2, v15

    .line 377
    add-int/lit8 v7, v7, 0x1

    .line 372
    :goto_ec
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 379
    :cond_ef
    aget-char v15, v10, v7

    invoke-static {v15}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v15

    add-int/2addr v2, v15

    goto :goto_ec

    .line 383
    .end local v7    # "j":I
    :cond_f7
    move-object/from16 v0, p0

    iget-object v15, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v15}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getDefaultColorsEncoded()B

    move-result v15

    int-to-char v5, v15

    .line 384
    .local v5, "defaultColor":C
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_101
    add-int/lit8 v15, v8, 0x1

    if-ge v7, v15, :cond_9b

    .line 385
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    add-int/lit8 v7, v7, 0x1

    goto :goto_101
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
    .line 135
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->blockCopy(IIIIII)V

    .line 136
    return-void
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
    .line 152
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->blockSet(IIIIIII)V

    .line 153
    return-void
.end method

.method public final drawText(ILandroid/graphics/Canvas;FFLhecticman/jsterm/emulatorview/TextRenderer;IIILjava/lang/String;)V
    .registers 60
    .param p1, "row"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "renderer"    # Lhecticman/jsterm/emulatorview/TextRenderer;
    .param p6, "cx"    # I
    .param p7, "selx1"    # I
    .param p8, "selx2"    # I
    .param p9, "imeText"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLine(I)[C

    move-result-object v20

    .line 174
    .local v20, "line":[C
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getLineColor(I)[B
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_13} :catch_48
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_4a

    move-result-object v41

    .line 183
    .local v41, "color":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getDefaultForeColor()I

    move-result v12

    .line 184
    .local v12, "defaultForeColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getDefaultBackColor()I

    move-result v13

    .line 186
    .local v13, "defaultBackColor":I
    if-nez v20, :cond_71

    .line 188
    move/from16 v0, p7

    move/from16 v1, p8

    if-eq v0, v1, :cond_4c

    .line 190
    sub-int v2, p8, p7

    new-array v8, v2, [C

    .line 191
    .local v8, "blank":[C
    const/16 v2, 0x20

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 192
    sub-int v7, p8, p7

    .line 193
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    .line 192
    invoke-interface/range {v2 .. v13}, Lhecticman/jsterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V

    .line 279
    .end local v8    # "blank":[C
    .end local v12    # "defaultForeColor":I
    .end local v13    # "defaultBackColor":I
    .end local v20    # "line":[C
    .end local v41    # "color":[B
    :cond_47
    :goto_47
    return-void

    .line 175
    :catch_48
    move-exception v44

    .line 177
    .local v44, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_47

    .line 178
    .end local v44    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4a
    move-exception v44

    .line 181
    .local v44, "e":Ljava/lang/NullPointerException;
    goto :goto_47

    .line 195
    .end local v44    # "e":Ljava/lang/NullPointerException;
    .restart local v12    # "defaultForeColor":I
    .restart local v13    # "defaultBackColor":I
    .restart local v20    # "line":[C
    .restart local v41    # "color":[B
    :cond_4c
    const/4 v2, -0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_47

    .line 197
    const/16 v19, 0x1

    .line 198
    const-string v2, " "

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    .end local v20    # "line":[C
    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v14, p5

    move-object/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p6

    move/from16 v24, v12

    move/from16 v25, v13

    .line 197
    invoke-interface/range {v14 .. v25}, Lhecticman/jsterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V

    goto :goto_47

    .line 205
    .restart local v20    # "line":[C
    :cond_71
    move-object/from16 v0, p0

    iget v0, v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mColumns:I

    move/from16 v43, v0

    .line 206
    .local v43, "columns":I
    const/16 v24, 0x0

    .line 207
    .local v24, "lastForeColor":I
    const/16 v25, 0x0

    .line 208
    .local v25, "lastBackColor":I
    const/16 v19, 0x0

    .line 209
    .local v19, "runWidth":I
    const/16 v18, -0x1

    .line 210
    .local v18, "lastRunStart":I
    const/16 v21, -0x1

    .line 211
    .local v21, "lastRunStartIndex":I
    const/16 v45, 0x0

    .line 212
    .local v45, "forceFlushRun":Z
    const/16 v40, 0x0

    .line 213
    .local v40, "cHigh":C
    const/high16 v38, 0x10000

    .line 214
    .local v38, "CURSOR_MASK":I
    const/16 v42, 0x0

    .line 215
    .local v42, "column":I
    const/16 v47, 0x0

    .local v47, "index":I
    move/from16 v48, v47

    .line 216
    .end local v47    # "index":I
    .local v48, "index":I
    :goto_8d
    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_e3

    .line 264
    if-ltz v18, :cond_aa

    .line 267
    sub-int v22, v48, v21

    .line 268
    const/high16 v2, 0x10000

    and-int v2, v2, v25

    if-eqz v2, :cond_177

    const/16 v23, 0x1

    :goto_9f
    move-object/from16 v14, p5

    move-object/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    .line 265
    invoke-interface/range {v14 .. v25}, Lhecticman/jsterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V

    .line 272
    :cond_aa
    if-ltz p6, :cond_47

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_47

    .line 273
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v43

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 274
    .local v31, "imeLength":I
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v33, v2, v31

    .line 275
    .local v33, "imeOffset":I
    sub-int v2, v43, v31

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 276
    .local v30, "imePosition":I
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v32

    .line 277
    const/16 v35, 0x1

    const/16 v36, 0xf

    const/16 v37, 0x0

    move-object/from16 v26, p5

    move-object/from16 v27, p2

    move/from16 v28, p3

    move/from16 v29, p4

    move/from16 v34, v31

    .line 276
    invoke-interface/range {v26 .. v37}, Lhecticman/jsterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V

    goto/16 :goto_47

    .line 218
    .end local v30    # "imePosition":I
    .end local v31    # "imeLength":I
    .end local v33    # "imeOffset":I
    :cond_e3
    if-eqz v41, :cond_fe

    .line 219
    aget-byte v2, v41, v42

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v46, v2, 0xf

    .line 220
    .local v46, "foreColor":I
    aget-byte v2, v41, v42

    and-int/lit8 v39, v2, 0xf

    .line 226
    .local v39, "backColor":I
    :goto_ef
    aget-char v2, v20, v48

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 227
    add-int/lit8 v47, v48, 0x1

    .end local v48    # "index":I
    .restart local v47    # "index":I
    aget-char v40, v20, v48

    move/from16 v48, v47

    .line 228
    .end local v47    # "index":I
    .restart local v48    # "index":I
    goto :goto_8d

    .line 222
    .end local v39    # "backColor":I
    .end local v46    # "foreColor":I
    :cond_fe
    move/from16 v46, v12

    .line 223
    .restart local v46    # "foreColor":I
    move/from16 v39, v13

    .restart local v39    # "backColor":I
    goto :goto_ef

    .line 229
    :cond_103
    aget-char v2, v20, v48

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 230
    aget-char v2, v20, v48

    move/from16 v0, v40

    invoke-static {v0, v2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(CC)I

    move-result v49

    .line 234
    .local v49, "width":I
    :goto_113
    move/from16 v0, p6

    move/from16 v1, v42

    if-eq v0, v1, :cond_125

    move/from16 v0, v42

    move/from16 v1, p7

    if-lt v0, v1, :cond_129

    move/from16 v0, v42

    move/from16 v1, p8

    if-gt v0, v1, :cond_129

    .line 236
    :cond_125
    const/high16 v2, 0x10000

    or-int v39, v39, v2

    .line 238
    :cond_129
    move/from16 v0, v46

    move/from16 v1, v24

    if-ne v0, v1, :cond_139

    move/from16 v0, v39

    move/from16 v1, v25

    if-ne v0, v1, :cond_139

    if-lez v49, :cond_15c

    if-eqz v45, :cond_15c

    .line 239
    :cond_139
    if-ltz v18, :cond_150

    .line 242
    sub-int v22, v48, v21

    .line 243
    const/high16 v2, 0x10000

    and-int v2, v2, v25

    if-eqz v2, :cond_174

    const/16 v23, 0x1

    :goto_145
    move-object/from16 v14, p5

    move-object/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    .line 240
    invoke-interface/range {v14 .. v25}, Lhecticman/jsterm/emulatorview/TextRenderer;->drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V

    .line 246
    :cond_150
    move/from16 v24, v46

    .line 247
    move/from16 v25, v39

    .line 248
    const/16 v19, 0x0

    .line 249
    move/from16 v18, v42

    .line 250
    move/from16 v21, v48

    .line 251
    const/16 v45, 0x0

    .line 253
    :cond_15c
    add-int v19, v19, v49

    .line 254
    add-int v42, v42, v49

    .line 255
    add-int/lit8 v47, v48, 0x1

    .line 256
    .end local v48    # "index":I
    .restart local v47    # "index":I
    const/4 v2, 0x1

    move/from16 v0, v49

    if-le v0, v2, :cond_17b

    .line 261
    const/16 v45, 0x1

    move/from16 v48, v47

    .end local v47    # "index":I
    .restart local v48    # "index":I
    goto/16 :goto_8d

    .line 232
    .end local v49    # "width":I
    :cond_16d
    aget-char v2, v20, v48

    invoke-static {v2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v49

    .restart local v49    # "width":I
    goto :goto_113

    .line 243
    :cond_174
    const/16 v23, 0x0

    goto :goto_145

    .line 268
    .end local v39    # "backColor":I
    .end local v46    # "foreColor":I
    .end local v49    # "width":I
    :cond_177
    const/16 v23, 0x0

    goto/16 :goto_9f

    .end local v48    # "index":I
    .restart local v39    # "backColor":I
    .restart local v46    # "foreColor":I
    .restart local v47    # "index":I
    .restart local v49    # "width":I
    :cond_17b
    move/from16 v48, v47

    .end local v47    # "index":I
    .restart local v48    # "index":I
    goto/16 :goto_8d
.end method

.method public fastResize(II[I)Z
    .registers 6
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .param p3, "cursor"    # [I

    .prologue
    const/4 v0, 0x1

    .line 400
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    if-nez v1, :cond_6

    .line 409
    :goto_5
    return v0

    .line 404
    :cond_6
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v1, p1, p2, p3}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->resize(II[I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 405
    iput p1, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mColumns:I

    .line 406
    iput p2, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    goto :goto_5

    .line 409
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    .line 87
    return-void
.end method

.method public getActiveRows()I
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getActiveRows()I

    move-result v0

    return v0
.end method

.method public getActiveTranscriptRows()I
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

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
    .line 308
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->internalGetTranscriptText(Ljava/lang/StringBuilder;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(Ljava/lang/StringBuilder;IIII)Ljava/lang/String;
    .registers 7
    .param p1, "colors"    # Ljava/lang/StringBuilder;
    .param p2, "selX1"    # I
    .param p3, "selY1"    # I
    .param p4, "selX2"    # I
    .param p5, "selY2"    # I

    .prologue
    .line 312
    invoke-direct/range {p0 .. p5}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->internalGetTranscriptText(Ljava/lang/StringBuilder;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptText()Ljava/lang/String;
    .registers 7

    .prologue
    .line 300
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v0

    neg-int v3, v0

    iget v4, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mColumns:I

    iget v5, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->internalGetTranscriptText(Ljava/lang/StringBuilder;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptText(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8
    .param p1, "colors"    # Ljava/lang/StringBuilder;

    .prologue
    .line 304
    const/4 v2, 0x0

    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->getActiveTranscriptRows()I

    move-result v0

    neg-int v3, v0

    iget v4, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mColumns:I

    iget v5, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mScreenRows:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->internalGetTranscriptText(Ljava/lang/StringBuilder;IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resize(IIII)V
    .registers 11
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .param p3, "foreColor"    # I
    .param p4, "backColor"    # I

    .prologue
    .line 414
    iget v2, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mTotalRows:I

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->init(IIIII)V

    .line 415
    return-void
.end method

.method public scroll(II)V
    .registers 4
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0, p1, p2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->scroll(II)V

    .line 119
    return-void
.end method

.method public set(IIBII)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "b"    # B
    .param p4, "foreColor"    # I
    .param p5, "backColor"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setChar(IIIII)Z

    .line 108
    return-void
.end method

.method public set(IIIII)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "codePoint"    # I
    .param p4, "foreColor"    # I
    .param p5, "backColor"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setChar(IIIII)Z

    .line 104
    return-void
.end method

.method public setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 5
    .param p1, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    .line 75
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {p1}, Lhecticman/jsterm/emulatorview/ColorScheme;->getForeColorIndex()I

    move-result v1

    invoke-virtual {p1}, Lhecticman/jsterm/emulatorview/ColorScheme;->getBackColorIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setDefaultColors(II)V

    .line 76
    return-void
.end method

.method public setLineWrap(I)V
    .registers 3
    .param p1, "row"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TranscriptScreen;->mData:Lhecticman/jsterm/emulatorview/UnicodeTranscript;

    invoke-virtual {v0, p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->setLineWrap(I)V

    .line 91
    return-void
.end method
