.class Lhecticman/jsterm/emulatorview/TerminalEmulator;
.super Ljava/lang/Object;
.source "TerminalEmulator.java"


# static fields
.field private static final ESC:I = 0x1

.field private static final ESC_LEFT_SQUARE_BRACKET:I = 0x5

.field private static final ESC_LEFT_SQUARE_BRACKET_QUESTION_MARK:I = 0x6

.field private static final ESC_NONE:I = 0x0

.field private static final ESC_PERCENT:I = 0x7

.field private static final ESC_POUND:I = 0x2

.field private static final ESC_SELECT_LEFT_PAREN:I = 0x3

.field private static final ESC_SELECT_RIGHT_PAREN:I = 0x4

.field private static final K_132_COLUMN_MODE_MASK:I = 0x8

.field private static final K_ORIGIN_MODE_MASK:I = 0x40

.field private static final K_WRAPAROUND_MODE_MASK:I = 0x80

.field private static final MAX_ESCAPE_PARAMETERS:I = 0x10

.field private static final UNICODE_REPLACEMENT_CHAR:I = 0xfffd

.field private static final mSpecialGraphicsCharMap:[C


# instance fields
.field private mAboutToAutoWrap:Z

.field private mAlternateCharSet:Z

.field private mArgIndex:I

.field private mArgs:[I

.field private mAutomaticNewlineMode:Z

.field private mBackColor:I

.field private mBottomMargin:I

.field private mColumns:I

.field private mContinueSequence:Z

.field private mCursorCol:I

.field private mCursorRow:I

.field private mDecFlags:I

.field private mDefaultBackColor:I

.field private mDefaultForeColor:I

.field private mDefaultUTF8Mode:Z

.field private mEscapeState:I

.field private mForeColor:I

.field private mInputCharBuffer:Ljava/nio/CharBuffer;

.field private mInsertMode:Z

.field private mInverseColors:Z

.field private mJustWrapped:Z

.field private mLastEmittedCharWidth:I

.field private mProcessedCharCount:I

.field private mRows:I

.field private mSavedCursorCol:I

.field private mSavedCursorRow:I

.field private mSavedDecFlags:I

.field private mScreen:Lhecticman/jsterm/emulatorview/Screen;

.field private mScrollCounter:I

.field private mSession:Lhecticman/jsterm/emulatorview/TermSession;

.field private mTabStop:[Z

.field private mTopMargin:I

.field private mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

.field private mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

.field private mUTF8EscapeUsed:Z

.field private mUTF8Mode:Z

.field private mUTF8ModeNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

.field private mUTF8ToFollow:I

.field private mbKeypadApplicationMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v2, 0x80

    const/16 v4, 0x68

    .line 265
    new-array v1, v2, [C

    sput-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    .line 267
    const/4 v0, 0x0

    .local v0, "i":C
    :goto_9
    if-lt v0, v2, :cond_138

    .line 270
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x5f

    const/16 v3, 0x20

    aput-char v3, v1, v2

    .line 271
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x62

    const/16 v3, 0x2409

    aput-char v3, v1, v2

    .line 272
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x63

    const/16 v3, 0x240c

    aput-char v3, v1, v2

    .line 273
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x64

    const/16 v3, 0x240d

    aput-char v3, v1, v2

    .line 274
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x65

    const/16 v3, 0x240a

    aput-char v3, v1, v2

    .line 275
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2424

    aput-char v2, v1, v4

    .line 276
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x69

    const/16 v3, 0x240b

    aput-char v3, v1, v2

    .line 277
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7d

    const/16 v3, 0xa3

    aput-char v3, v1, v2

    .line 278
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x66

    const/16 v3, 0xb0

    aput-char v3, v1, v2

    .line 279
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x60

    const/16 v3, 0x2b25

    aput-char v3, v1, v2

    .line 280
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7e

    const/16 v3, 0x2022

    aput-char v3, v1, v2

    .line 281
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x79

    const/16 v3, 0x2264

    aput-char v3, v1, v2

    .line 282
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7c

    const/16 v3, 0x2260

    aput-char v3, v1, v2

    .line 283
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7a

    const/16 v3, 0x2265

    aput-char v3, v1, v2

    .line 284
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x67

    const/16 v3, 0xb1

    aput-char v3, v1, v2

    .line 285
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7b

    const/16 v3, 0x3c0

    aput-char v3, v1, v2

    .line 286
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2e

    const/16 v3, 0x25bc

    aput-char v3, v1, v2

    .line 287
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2c

    const/16 v3, 0x25c0

    aput-char v3, v1, v2

    .line 288
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2b

    const/16 v3, 0x25b6

    aput-char v3, v1, v2

    .line 289
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2d

    const/16 v3, 0x25b2

    aput-char v3, v1, v2

    .line 290
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x23

    aput-char v2, v1, v4

    .line 291
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x61

    const/16 v3, 0x2592

    aput-char v3, v1, v2

    .line 292
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x30

    const/16 v3, 0x2588

    aput-char v3, v1, v2

    .line 293
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x71

    const/16 v3, 0x2500

    aput-char v3, v1, v2

    .line 294
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x78

    const/16 v3, 0x2502

    aput-char v3, v1, v2

    .line 295
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6d

    const/16 v3, 0x2514

    aput-char v3, v1, v2

    .line 296
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6a

    const/16 v3, 0x2518

    aput-char v3, v1, v2

    .line 297
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6c

    const/16 v3, 0x250c

    aput-char v3, v1, v2

    .line 298
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6b

    const/16 v3, 0x2510

    aput-char v3, v1, v2

    .line 299
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x77

    const/16 v3, 0x252c

    aput-char v3, v1, v2

    .line 300
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x75

    const/16 v3, 0x2524

    aput-char v3, v1, v2

    .line 301
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x74

    const/16 v3, 0x251c

    aput-char v3, v1, v2

    .line 302
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x76

    const/16 v3, 0x2534

    aput-char v3, v1, v2

    .line 303
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6e

    const/16 v3, 0x253c

    aput-char v3, v1, v2

    .line 304
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6f

    const/16 v3, 0x23ba

    aput-char v3, v1, v2

    .line 305
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x70

    const/16 v3, 0x23bb

    aput-char v3, v1, v2

    .line 306
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x72

    const/16 v3, 0x23bc

    aput-char v3, v1, v2

    .line 307
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x73

    const/16 v3, 0x23bd

    aput-char v3, v1, v2

    .line 34
    return-void

    .line 268
    :cond_138
    sget-object v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    aput-char v0, v1, v0

    .line 267
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto/16 :goto_9
.end method

.method public constructor <init>(Lhecticman/jsterm/emulatorview/TermSession;Lhecticman/jsterm/emulatorview/Screen;IILhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 8
    .param p1, "session"    # Lhecticman/jsterm/emulatorview/TermSession;
    .param p2, "screen"    # Lhecticman/jsterm/emulatorview/Screen;
    .param p3, "columns"    # I
    .param p4, "rows"    # I
    .param p5, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgs:[I

    .line 230
    iput v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mLastEmittedCharWidth:I

    .line 237
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mJustWrapped:Z

    .line 313
    iput v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    .line 319
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultUTF8Mode:Z

    .line 320
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    .line 321
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    .line 322
    iput v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 338
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSession:Lhecticman/jsterm/emulatorview/TermSession;

    .line 339
    iput-object p2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    .line 340
    iput p4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    .line 341
    iput p3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    .line 342
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    .line 344
    invoke-virtual {p0, p5}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V

    .line 346
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    .line 347
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInputCharBuffer:Ljava/nio/CharBuffer;

    .line 348
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 349
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 350
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 352
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->reset()V

    .line 353
    return-void
.end method

.method private autoWrapEnabled()Z
    .registers 2

    .prologue
    .line 1397
    const/4 v0, 0x1

    return v0
.end method

.method private blockClear(III)V
    .registers 5
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I

    .prologue
    .line 1202
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    .line 1203
    return-void
.end method

.method private blockClear(IIII)V
    .registers 13
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1206
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    const/16 v5, 0x20

    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getForeColor()I

    move-result v6

    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getBackColor()I

    move-result v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v7}, Lhecticman/jsterm/emulatorview/Screen;->blockSet(IIIIIII)V

    .line 1207
    return-void
.end method

.method private continueSequence()V
    .registers 2

    .prologue
    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    .line 814
    return-void
.end method

.method private continueSequence(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 817
    iput p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    .line 819
    return-void
.end method

.method private doEsc(B)V
    .registers 9
    .param p1, "b"    # B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 860
    sparse-switch p1, :sswitch_data_88

    .line 939
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    .line 942
    :goto_8
    return-void

    .line 862
    :sswitch_9
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto :goto_8

    .line 866
    :sswitch_e
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto :goto_8

    .line 870
    :sswitch_13
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto :goto_8

    .line 874
    :sswitch_18
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedCursorRow:I

    .line 875
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedCursorCol:I

    goto :goto_8

    .line 879
    :sswitch_21
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedCursorRow:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedCursorCol:I

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_8

    .line 883
    :sswitch_29
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_8

    .line 887
    :sswitch_2d
    invoke-direct {p0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    .line 888
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_8

    .line 892
    :sswitch_34
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_8

    .line 896
    :sswitch_3c
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    aput-boolean v2, v0, v1

    goto :goto_8

    .line 900
    :sswitch_43
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    if-gt v0, v2, :cond_66

    .line 901
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 902
    iget v5, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iget v5, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v6, v5, 0x1

    move v5, v1

    .line 901
    invoke-interface/range {v0 .. v6}, Lhecticman/jsterm/emulatorview/Screen;->blockCopy(IIIIII)V

    .line 903
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto :goto_8

    .line 905
    :cond_66
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    goto :goto_8

    .line 911
    :sswitch_6d
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unimplementedSequence(B)V

    goto :goto_8

    .line 915
    :sswitch_71
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unimplementedSequence(B)V

    goto :goto_8

    .line 919
    :sswitch_75
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unimplementedSequence(B)V

    goto :goto_8

    .line 923
    :sswitch_79
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->sendDeviceAttributes()V

    goto :goto_8

    .line 927
    :sswitch_7d
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto :goto_8

    .line 931
    :sswitch_82
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mbKeypadApplicationMode:Z

    goto :goto_8

    .line 935
    :sswitch_85
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mbKeypadApplicationMode:Z

    goto :goto_8

    .line 860
    :sswitch_data_88
    .sparse-switch
        0x23 -> :sswitch_9
        0x28 -> :sswitch_e
        0x29 -> :sswitch_13
        0x30 -> :sswitch_71
        0x37 -> :sswitch_18
        0x38 -> :sswitch_21
        0x3d -> :sswitch_82
        0x3e -> :sswitch_85
        0x44 -> :sswitch_29
        0x45 -> :sswitch_2d
        0x46 -> :sswitch_34
        0x48 -> :sswitch_3c
        0x4d -> :sswitch_43
        0x4e -> :sswitch_6d
        0x50 -> :sswitch_75
        0x5a -> :sswitch_79
        0x5b -> :sswitch_7d
    .end sparse-switch
.end method

.method private doEscLSBQuest(B)V
    .registers 6
    .param p1, "b"    # B

    .prologue
    const/4 v3, 0x0

    .line 749
    invoke-direct {p0, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v1

    invoke-direct {p0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getDecFlagsMask(I)I

    move-result v0

    .line 750
    .local v0, "mask":I
    sparse-switch p1, :sswitch_data_4c

    .line 768
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->parseArg(B)V

    .line 773
    :goto_f
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1d

    .line 776
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    invoke-direct {p0, v3, v3, v1, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    .line 777
    invoke-direct {p0, v3, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    .line 781
    :cond_1d
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_24

    .line 783
    invoke-direct {p0, v3, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorPosition(II)V

    .line 785
    :cond_24
    return-void

    .line 752
    :sswitch_25
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    goto :goto_f

    .line 756
    :sswitch_2b
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    goto :goto_f

    .line 760
    :sswitch_33
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedDecFlags:I

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    goto :goto_f

    .line 764
    :sswitch_3f
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedDecFlags:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedDecFlags:I

    goto :goto_f

    .line 750
    nop

    :sswitch_data_4c
    .sparse-switch
        0x68 -> :sswitch_25
        0x6c -> :sswitch_2b
        0x72 -> :sswitch_33
        0x73 -> :sswitch_3f
    .end sparse-switch
.end method

.method private doEscLeftSquareBracket(B)V
    .registers 24
    .param p1, "b"    # B

    .prologue
    .line 945
    packed-switch p1, :pswitch_data_34a

    .line 1142
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->parseArg(B)V

    .line 1145
    :cond_6
    :goto_6
    return-void

    .line 948
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    sub-int v14, v2, v3

    .line 949
    .local v14, "charsAfterCursor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 950
    .local v16, "charsToInsert":I
    sub-int v5, v14, v16

    .line 951
    .local v5, "charsToMove":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    .line 952
    move-object/from16 v0, p0

    iget v7, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int v7, v7, v16

    move-object/from16 v0, p0

    iget v8, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 951
    invoke-interface/range {v2 .. v8}, Lhecticman/jsterm/emulatorview/Screen;->blockCopy(IIIIII)V

    .line 953
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto :goto_6

    .line 958
    .end local v5    # "charsToMove":I
    .end local v14    # "charsAfterCursor":I
    .end local v16    # "charsToInsert":I
    :pswitch_48
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRow(I)V

    goto :goto_6

    .line 962
    :pswitch_62
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRow(I)V

    goto :goto_6

    .line 966
    :pswitch_7e
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_6

    .line 970
    :pswitch_9b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_6

    .line 974
    :pswitch_b3
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_6

    .line 978
    :pswitch_d0
    invoke-direct/range {p0 .. p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setHorizontalVerticalPosition()V

    goto/16 :goto_6

    .line 982
    :pswitch_d5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_3b6

    .line 999
    invoke-direct/range {p0 .. p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    goto/16 :goto_6

    .line 984
    :pswitch_e4
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    .line 985
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    .line 986
    move-object/from16 v0, p0

    iget v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    move-object/from16 v0, p0

    iget v7, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    .line 985
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_6

    .line 990
    :pswitch_117
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v7, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    .line 991
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 995
    :pswitch_140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    move-object/from16 v0, p0

    iget v7, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_6

    .line 1005
    :pswitch_159
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_3c0

    .line 1019
    invoke-direct/range {p0 .. p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    goto/16 :goto_6

    .line 1007
    :pswitch_168
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1011
    :pswitch_180
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1015
    :pswitch_192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1026
    :pswitch_1a2
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    sub-int v18, v2, v3

    .line 1027
    .local v18, "linesAfterCursor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 1028
    .local v20, "linesToInsert":I
    sub-int v10, v18, v20

    .line 1029
    .local v10, "linesToMove":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v9, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    const/4 v11, 0x0

    .line 1030
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int v12, v2, v20

    .line 1029
    invoke-interface/range {v6 .. v12}, Lhecticman/jsterm/emulatorview/Screen;->blockCopy(IIIIII)V

    .line 1031
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v4, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_6

    .line 1037
    .end local v10    # "linesToMove":I
    .end local v18    # "linesAfterCursor":I
    .end local v20    # "linesToInsert":I
    :pswitch_1e4
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    sub-int v18, v2, v3

    .line 1038
    .restart local v18    # "linesAfterCursor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1039
    .local v19, "linesToDelete":I
    sub-int v10, v18, v19

    .line 1040
    .restart local v10    # "linesToMove":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int v8, v2, v19

    move-object/from16 v0, p0

    iget v9, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    .line 1041
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1040
    invoke-interface/range {v6 .. v12}, Lhecticman/jsterm/emulatorview/Screen;->blockCopy(IIIIII)V

    .line 1042
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v3, v4, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_6

    .line 1048
    .end local v10    # "linesToMove":I
    .end local v18    # "linesAfterCursor":I
    .end local v19    # "linesToDelete":I
    :pswitch_227
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    sub-int v14, v2, v3

    .line 1049
    .restart local v14    # "charsAfterCursor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1050
    .local v15, "charsToDelete":I
    sub-int v5, v14, v15

    .line 1051
    .restart local v5    # "charsToMove":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1052
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v8, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1051
    invoke-interface/range {v2 .. v8}, Lhecticman/jsterm/emulatorview/Screen;->blockCopy(IIIIII)V

    .line 1053
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1058
    .end local v5    # "charsToMove":I
    .end local v14    # "charsAfterCursor":I
    .end local v15    # "charsToDelete":I
    :pswitch_267
    invoke-direct/range {p0 .. p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unimplementedSequence(B)V

    goto/16 :goto_6

    .line 1062
    :pswitch_26c
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1066
    :pswitch_282
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->prevTabStop(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_6

    .line 1070
    :pswitch_293
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_6

    .line 1074
    :pswitch_29b
    invoke-direct/range {p0 .. p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->sendDeviceAttributes()V

    goto/16 :goto_6

    .line 1078
    :pswitch_2a0
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_6

    .line 1082
    :pswitch_2bd
    invoke-direct/range {p0 .. p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setHorizontalVerticalPosition()V

    goto/16 :goto_6

    .line 1086
    :pswitch_2c2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_3ca

    :pswitch_2cc
    goto/16 :goto_6

    .line 1088
    :pswitch_2ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    goto/16 :goto_6

    .line 1092
    :pswitch_2db
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2dd
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v17

    .line 1092
    add-int/lit8 v17, v17, 0x1

    goto :goto_2dd

    .line 1104
    .end local v17    # "i":I
    :pswitch_2ef
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_6

    .line 1108
    :pswitch_2f7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_6

    .line 1112
    :pswitch_2ff
    invoke-direct/range {p0 .. p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->selectGraphicRendition()V

    goto/16 :goto_6

    .line 1131
    :pswitch_304
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 1132
    .local v21, "top":I
    add-int/lit8 v2, v21, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg1(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1133
    .local v13, "bottom":I
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    .line 1134
    move-object/from16 v0, p0

    iput v13, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 1137
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    goto/16 :goto_6

    .line 945
    :pswitch_data_34a
    .packed-switch 0x3f
        :pswitch_293
        :pswitch_7
        :pswitch_48
        :pswitch_62
        :pswitch_7e
        :pswitch_9b
        :pswitch_3
        :pswitch_3
        :pswitch_b3
        :pswitch_d0
        :pswitch_3
        :pswitch_d5
        :pswitch_159
        :pswitch_1a2
        :pswitch_1e4
        :pswitch_3
        :pswitch_3
        :pswitch_227
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_267
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_26c
        :pswitch_3
        :pswitch_282
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_29b
        :pswitch_2a0
        :pswitch_3
        :pswitch_2bd
        :pswitch_2c2
        :pswitch_2ef
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2f7
        :pswitch_2ff
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_304
    .end packed-switch

    .line 982
    :pswitch_data_3b6
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_117
        :pswitch_140
    .end packed-switch

    .line 1005
    :pswitch_data_3c0
    .packed-switch 0x0
        :pswitch_168
        :pswitch_180
        :pswitch_192
    .end packed-switch

    .line 1086
    :pswitch_data_3ca
    .packed-switch 0x0
        :pswitch_2ce
        :pswitch_2cc
        :pswitch_2cc
        :pswitch_2db
    .end packed-switch
.end method

.method private doEscPercent(B)V
    .registers 4
    .param p1, "b"    # B

    .prologue
    const/4 v1, 0x1

    .line 734
    sparse-switch p1, :sswitch_data_12

    .line 746
    :goto_4
    return-void

    .line 736
    :sswitch_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setUTF8Mode(Z)V

    .line 737
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    goto :goto_4

    .line 740
    :sswitch_c
    invoke-virtual {p0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setUTF8Mode(Z)V

    .line 741
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    goto :goto_4

    .line 734
    :sswitch_data_12
    .sparse-switch
        0x40 -> :sswitch_5
        0x47 -> :sswitch_c
    .end sparse-switch
.end method

.method private doEscPound(B)V
    .registers 10
    .param p1, "b"    # B

    .prologue
    const/4 v1, 0x0

    .line 847
    packed-switch p1, :pswitch_data_1e

    .line 854
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    .line 857
    :goto_7
    return-void

    .line 849
    :pswitch_8
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    const/16 v5, 0x45

    .line 850
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getForeColor()I

    move-result v6

    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getBackColor()I

    move-result v7

    move v2, v1

    .line 849
    invoke-interface/range {v0 .. v7}, Lhecticman/jsterm/emulatorview/Screen;->blockSet(IIIIIII)V

    goto :goto_7

    .line 847
    nop

    :pswitch_data_1e
    .packed-switch 0x38
        :pswitch_8
    .end packed-switch
.end method

.method private doEscSelectLeftParen(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 822
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doSelectCharSet(ZB)V

    .line 823
    return-void
.end method

.method private doEscSelectRightParen(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 826
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doSelectCharSet(ZB)V

    .line 827
    return-void
.end method

.method private doLinefeed()V
    .registers 3

    .prologue
    .line 804
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v1, 0x1

    .line 805
    .local v0, "newCursorRow":I
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    if-lt v0, v1, :cond_f

    .line 806
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->scroll()V

    .line 807
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v1, -0x1

    .line 809
    :cond_f
    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRow(I)V

    .line 810
    return-void
.end method

.method private doSelectCharSet(ZB)V
    .registers 3
    .param p1, "isG0CharSet"    # Z
    .param p2, "b"    # B

    .prologue
    .line 830
    sparse-switch p2, :sswitch_data_8

    .line 842
    invoke-direct {p0, p2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    .line 844
    :sswitch_6
    return-void

    .line 830
    nop

    :sswitch_data_8
    .sparse-switch
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x41 -> :sswitch_6
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method private doSetMode(Z)V
    .registers 4
    .param p1, "newValue"    # Z

    .prologue
    .line 1220
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1221
    .local v0, "modeBit":I
    sparse-switch v0, :sswitch_data_12

    .line 1231
    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unknownParameter(I)V

    .line 1234
    :goto_b
    return-void

    .line 1223
    :sswitch_c
    iput-boolean p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInsertMode:Z

    goto :goto_b

    .line 1227
    :sswitch_f
    iput-boolean p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAutomaticNewlineMode:Z

    goto :goto_b

    .line 1221
    :sswitch_data_12
    .sparse-switch
        0x4 -> :sswitch_c
        0x14 -> :sswitch_f
    .end sparse-switch
.end method

.method private emit(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 1460
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAlternateCharSet:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x80

    if-ge p1, v0, :cond_10

    .line 1461
    sget-object v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    aget-char v0, v0, p1

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(I)V

    .line 1465
    :goto_f
    return-void

    .line 1463
    :cond_10
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(I)V

    goto :goto_f
.end method

.method private emit(I)V
    .registers 4
    .param p1, "c"    # I

    .prologue
    .line 1456
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getForeColor()I

    move-result v0

    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getBackColor()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(III)V

    .line 1457
    return-void
.end method

.method private emit(III)V
    .registers 18
    .param p1, "c"    # I
    .param p2, "foreColor"    # I
    .param p3, "backColor"    # I

    .prologue
    .line 1409
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->autoWrapEnabled()Z

    move-result v12

    .line 1410
    .local v12, "autoWrap":Z
    invoke-static {p1}, Lhecticman/jsterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v13

    .line 1412
    .local v13, "width":I
    if-eqz v12, :cond_34

    .line 1413
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_34

    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v0, :cond_19

    const/4 v0, 0x2

    if-ne v13, v0, :cond_34

    .line 1414
    :cond_19
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-interface {v0, v1}, Lhecticman/jsterm/emulatorview/Screen;->setLineWrap(I)V

    .line 1415
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mJustWrapped:Z

    .line 1417
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    if-ge v0, v1, :cond_8c

    .line 1418
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1425
    :cond_34
    :goto_34
    iget-boolean v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInsertMode:Z

    if-eqz v13, :cond_90

    const/4 v0, 0x1

    :goto_39
    and-int/2addr v0, v1

    if-eqz v0, :cond_53

    .line 1426
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int v5, v0, v13

    .line 1427
    .local v5, "destCol":I
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    if-ge v5, v0, :cond_53

    .line 1428
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, v5

    .line 1429
    const/4 v4, 0x1

    iget v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1428
    invoke-interface/range {v0 .. v6}, Lhecticman/jsterm/emulatorview/Screen;->blockCopy(IIIIII)V

    .line 1433
    .end local v5    # "destCol":I
    :cond_53
    if-nez v13, :cond_a5

    .line 1435
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mJustWrapped:Z

    if-eqz v0, :cond_92

    .line 1436
    iget-object v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mLastEmittedCharWidth:I

    sub-int v7, v0, v1

    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v8, v0, -0x1

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-interface/range {v6 .. v11}, Lhecticman/jsterm/emulatorview/Screen;->set(IIIII)V

    .line 1445
    :goto_6d
    if-eqz v12, :cond_7a

    .line 1446
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b7

    const/4 v0, 0x1

    :goto_78
    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1449
    :cond_7a
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v13

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1450
    if-lez v13, :cond_8b

    .line 1451
    iput v13, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mLastEmittedCharWidth:I

    .line 1453
    :cond_8b
    return-void

    .line 1420
    :cond_8c
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->scroll()V

    goto :goto_34

    .line 1425
    :cond_90
    const/4 v0, 0x0

    goto :goto_39

    .line 1438
    :cond_92
    iget-object v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mLastEmittedCharWidth:I

    sub-int v7, v0, v1

    iget v8, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-interface/range {v6 .. v11}, Lhecticman/jsterm/emulatorview/Screen;->set(IIIII)V

    goto :goto_6d

    .line 1441
    :cond_a5
    iget-object v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    iget v7, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v8, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-interface/range {v6 .. v11}, Lhecticman/jsterm/emulatorview/Screen;->set(IIIII)V

    .line 1442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mJustWrapped:Z

    goto :goto_6d

    .line 1446
    :cond_b7
    const/4 v0, 0x0

    goto :goto_78
.end method

.method private emit([C)V
    .registers 4
    .param p1, "c"    # [C

    .prologue
    const/4 v1, 0x0

    .line 1473
    aget-char v0, p1, v1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1474
    aget-char v0, p1, v1

    const/4 v1, 0x1

    aget-char v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(I)V

    .line 1478
    :goto_15
    return-void

    .line 1476
    :cond_16
    aget-char v0, p1, v1

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(I)V

    goto :goto_15
.end method

.method private emit([CII)V
    .registers 10
    .param p1, "c"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1500
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getForeColor()I

    move-result v4

    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getBackColor()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit([CIIII)V

    .line 1501
    return-void
.end method

.method private emit([CIIII)V
    .registers 9
    .param p1, "c"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "foreColor"    # I
    .param p5, "backColor"    # I

    .prologue
    .line 1486
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-lt v0, p3, :cond_4

    .line 1497
    :cond_3
    return-void

    .line 1487
    :cond_4
    aget-char v1, p1, v0

    if-eqz v1, :cond_3

    .line 1490
    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1491
    aget-char v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-char v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-direct {p0, v1, p4, p5}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(III)V

    .line 1492
    add-int/lit8 v0, v0, 0x1

    .line 1486
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1494
    :cond_22
    aget-char v1, p1, v0

    invoke-direct {p0, v1, p4, p5}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(III)V

    goto :goto_1f
.end method

.method private finishSequence()V
    .registers 2

    .prologue
    .line 1392
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 1393
    return-void
.end method

.method private getArg(II)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 1327
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgs:[I

    aget v0, v1, p1

    .line 1328
    .local v0, "result":I
    if-gez v0, :cond_7

    .line 1329
    move v0, p2

    .line 1331
    :cond_7
    return v0
.end method

.method private getArg0(I)I
    .registers 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 1319
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg(II)I

    move-result v0

    return v0
.end method

.method private getArg1(I)I
    .registers 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 1323
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg(II)I

    move-result v0

    return v0
.end method

.method private getBackColor()I
    .registers 3

    .prologue
    .line 1215
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInverseColors:Z

    if-eqz v0, :cond_e

    .line 1216
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    and-int/lit8 v0, v0, 0x7

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    and-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1215
    :goto_d
    return v0

    .line 1216
    :cond_e
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto :goto_d
.end method

.method private getDecFlagsMask(I)I
    .registers 4
    .param p1, "argument"    # I

    .prologue
    const/4 v1, 0x1

    .line 788
    if-lt p1, v1, :cond_a

    const/16 v0, 0x9

    if-gt p1, v0, :cond_a

    .line 789
    shl-int v0, v1, p1

    .line 792
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getForeColor()I
    .registers 3

    .prologue
    .line 1210
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInverseColors:Z

    if-eqz v0, :cond_e

    .line 1211
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    and-int/lit8 v0, v0, 0x7

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    and-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1210
    :goto_d
    return v0

    .line 1211
    :cond_e
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    goto :goto_d
.end method

.method private handleUTF8Sequence(B)Z
    .registers 11
    .param p1, "b"    # B

    .prologue
    const v8, 0xfffd

    const/16 v7, 0x80

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 653
    iget v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    if-nez v6, :cond_10

    and-int/lit16 v6, p1, 0x80

    if-nez v6, :cond_10

    .line 708
    :goto_f
    return v4

    .line 658
    :cond_10
    iget v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    if-lez v6, :cond_63

    .line 659
    and-int/lit16 v6, p1, 0xc0

    if-eq v6, v7, :cond_24

    .line 662
    iput v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 663
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 664
    invoke-direct {p0, v8}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(I)V

    move v4, v5

    .line 665
    goto :goto_f

    .line 668
    :cond_24
    iget-object v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 669
    iget v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    if-nez v6, :cond_5d

    .line 671
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    .line 672
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInputCharBuffer:Ljava/nio/CharBuffer;

    .line 673
    .local v1, "charBuf":Ljava/nio/CharBuffer;
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 675
    .local v3, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 676
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 677
    invoke-virtual {v3, v0, v1, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 678
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 680
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    .line 681
    .local v2, "chars":[C
    aget-char v6, v2, v4

    if-lt v6, v7, :cond_5f

    aget-char v6, v2, v4

    const/16 v7, 0x9f

    if-gt v6, v7, :cond_5f

    .line 684
    aget-char v6, v2, v4

    int-to-byte v6, v6

    invoke-direct {p0, v6, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->process(BZ)V

    .line 689
    :goto_57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 690
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "charBuf":Ljava/nio/CharBuffer;
    .end local v2    # "chars":[C
    .end local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_5d
    :goto_5d
    move v4, v5

    .line 708
    goto :goto_f

    .line 686
    .restart local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v1    # "charBuf":Ljava/nio/CharBuffer;
    .restart local v2    # "chars":[C
    .restart local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_5f
    invoke-direct {p0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit([C)V

    goto :goto_57

    .line 693
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "charBuf":Ljava/nio/CharBuffer;
    .end local v2    # "chars":[C
    .end local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_63
    and-int/lit16 v4, p1, 0xe0

    const/16 v6, 0xc0

    if-ne v4, v6, :cond_71

    .line 694
    iput v5, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 705
    :goto_6b
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5d

    .line 695
    :cond_71
    and-int/lit16 v4, p1, 0xf0

    const/16 v6, 0xe0

    if-ne v4, v6, :cond_7b

    .line 696
    const/4 v4, 0x2

    iput v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    goto :goto_6b

    .line 697
    :cond_7b
    and-int/lit16 v4, p1, 0xf8

    const/16 v6, 0xf0

    if-ne v4, v6, :cond_85

    .line 698
    const/4 v4, 0x3

    iput v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    goto :goto_6b

    .line 701
    :cond_85
    invoke-direct {p0, v8}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(I)V

    move v4, v5

    .line 702
    goto :goto_f
.end method

.method private logError(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1388
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->finishSequence()V

    .line 1389
    return-void
.end method

.method private logError(Ljava/lang/String;B)V
    .registers 3
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "b"    # B

    .prologue
    .line 1382
    return-void
.end method

.method private nextTabStop(I)I
    .registers 4
    .param p1, "cursorCol"    # I

    .prologue
    .line 716
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    if-lt v0, v1, :cond_b

    .line 721
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v0, v1, -0x1

    .end local v0    # "i":I
    :cond_a
    return v0

    .line 717
    .restart local v0    # "i":I
    :cond_b
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_a

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private parseArg(B)V
    .registers 7
    .param p1, "b"    # B

    .prologue
    .line 1295
    const/16 v3, 0x30

    if-lt p1, v3, :cond_29

    const/16 v3, 0x39

    if-gt p1, v3, :cond_29

    .line 1296
    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    iget-object v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgs:[I

    array-length v4, v4

    if-ge v3, v4, :cond_23

    .line 1297
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgs:[I

    iget v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    aget v0, v3, v4

    .line 1298
    .local v0, "oldValue":I
    add-int/lit8 v1, p1, -0x30

    .line 1300
    .local v1, "thisDigit":I
    if-ltz v0, :cond_27

    .line 1301
    mul-int/lit8 v3, v0, 0xa

    add-int v2, v3, v1

    .line 1305
    .local v2, "value":I
    :goto_1d
    iget-object v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgs:[I

    iget v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    aput v2, v3, v4

    .line 1307
    .end local v0    # "oldValue":I
    .end local v1    # "thisDigit":I
    .end local v2    # "value":I
    :cond_23
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->continueSequence()V

    .line 1316
    :goto_26
    return-void

    .line 1303
    .restart local v0    # "oldValue":I
    .restart local v1    # "thisDigit":I
    :cond_27
    move v2, v1

    .restart local v2    # "value":I
    goto :goto_1d

    .line 1308
    .end local v0    # "oldValue":I
    .end local v1    # "thisDigit":I
    .end local v2    # "value":I
    :cond_29
    const/16 v3, 0x3b

    if-ne p1, v3, :cond_3e

    .line 1309
    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    iget-object v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgs:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3a

    .line 1310
    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    .line 1312
    :cond_3a
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->continueSequence()V

    goto :goto_26

    .line 1314
    :cond_3e
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    goto :goto_26
.end method

.method private prevTabStop(I)I
    .registers 4
    .param p1, "cursorCol"    # I

    .prologue
    .line 725
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_2
    if-gez v0, :cond_6

    .line 730
    const/4 v0, 0x0

    .end local v0    # "i":I
    :cond_5
    return v0

    .line 726
    .restart local v0    # "i":I
    :cond_6
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_5

    .line 725
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private process(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->process(BZ)V

    .line 537
    return-void
.end method

.method private process(BZ)V
    .registers 7
    .param p1, "b"    # B
    .param p2, "doUTF8"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 541
    if-eqz p2, :cond_f

    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->handleUTF8Sequence(B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 650
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 546
    :cond_f
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    and-int/lit8 v0, p1, 0x7f

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_27

    .line 549
    invoke-direct {p0, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->startEscapeSequence(I)V

    .line 550
    and-int/lit8 v0, p1, 0x7f

    add-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    invoke-direct {p0, v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->process(BZ)V

    goto :goto_e

    .line 554
    :cond_27
    packed-switch p1, :pswitch_data_96

    .line 605
    :pswitch_2a
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    .line 606
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mEscapeState:I

    packed-switch v0, :pswitch_data_d2

    .line 642
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    .line 645
    :cond_34
    :goto_34
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    if-nez v0, :cond_e

    .line 646
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mEscapeState:I

    goto :goto_e

    .line 564
    :pswitch_3b
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto :goto_e

    .line 569
    :pswitch_47
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->nextTabStop(I)I

    move-result v0

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto :goto_e

    .line 573
    :pswitch_51
    invoke-direct {p0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto :goto_e

    .line 579
    :pswitch_55
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_e

    .line 583
    :pswitch_59
    invoke-direct {p0, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setAltCharSet(Z)V

    goto :goto_e

    .line 587
    :pswitch_5d
    invoke-direct {p0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setAltCharSet(Z)V

    goto :goto_e

    .line 593
    :pswitch_61
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mEscapeState:I

    if-eqz v0, :cond_e

    .line 594
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 595
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(B)V

    goto :goto_e

    .line 601
    :pswitch_6d
    invoke-direct {p0, v3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->startEscapeSequence(I)V

    goto :goto_e

    .line 608
    :pswitch_71
    const/16 v0, 0x20

    if-lt p1, v0, :cond_34

    .line 609
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(B)V

    goto :goto_34

    .line 614
    :pswitch_79
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doEsc(B)V

    goto :goto_34

    .line 618
    :pswitch_7d
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doEscPound(B)V

    goto :goto_34

    .line 622
    :pswitch_81
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doEscSelectLeftParen(B)V

    goto :goto_34

    .line 626
    :pswitch_85
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doEscSelectRightParen(B)V

    goto :goto_34

    .line 630
    :pswitch_89
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doEscLeftSquareBracket(B)V

    goto :goto_34

    .line 634
    :pswitch_8d
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doEscLSBQuest(B)V

    goto :goto_34

    .line 638
    :pswitch_91
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doEscPercent(B)V

    goto :goto_34

    .line 554
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_e
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_e
        :pswitch_3b
        :pswitch_47
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_51
        :pswitch_59
        :pswitch_5d
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_61
        :pswitch_2a
        :pswitch_61
        :pswitch_6d
    .end packed-switch

    .line 606
    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_71
        :pswitch_79
        :pswitch_7d
        :pswitch_81
        :pswitch_85
        :pswitch_89
        :pswitch_8d
        :pswitch_91
    .end packed-switch
.end method

.method private scroll()V
    .registers 4

    .prologue
    .line 1285
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    .line 1286
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    invoke-interface {v0, v1, v2}, Lhecticman/jsterm/emulatorview/Screen;->scroll(II)V

    .line 1287
    return-void
.end method

.method private selectGraphicRendition()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    if-le v1, v2, :cond_8

    .line 1199
    return-void

    .line 1149
    :cond_8
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgs:[I

    aget v0, v2, v1

    .line 1150
    .local v0, "code":I
    if-gez v0, :cond_16

    .line 1151
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    if-lez v2, :cond_15

    .line 1148
    :cond_12
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1154
    :cond_15
    const/4 v0, 0x0

    .line 1160
    :cond_16
    if-nez v0, :cond_23

    .line 1161
    iput-boolean v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInverseColors:Z

    .line 1162
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    .line 1163
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto :goto_12

    .line 1164
    :cond_23
    if-ne v0, v5, :cond_2c

    .line 1165
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    goto :goto_12

    .line 1166
    :cond_2c
    const/4 v2, 0x3

    if-ne v0, v2, :cond_32

    .line 1167
    iput-boolean v5, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInverseColors:Z

    goto :goto_12

    .line 1168
    :cond_32
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3c

    .line 1169
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto :goto_12

    .line 1170
    :cond_3c
    const/4 v2, 0x7

    if-ne v0, v2, :cond_42

    .line 1171
    iput-boolean v5, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInverseColors:Z

    goto :goto_12

    .line 1172
    :cond_42
    const/16 v2, 0xa

    if-ne v0, v2, :cond_4a

    .line 1173
    invoke-direct {p0, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setAltCharSet(Z)V

    goto :goto_12

    .line 1174
    :cond_4a
    const/16 v2, 0xb

    if-ne v0, v2, :cond_52

    .line 1175
    invoke-direct {p0, v5}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setAltCharSet(Z)V

    goto :goto_12

    .line 1176
    :cond_52
    const/16 v2, 0x16

    if-ne v0, v2, :cond_5d

    .line 1177
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    and-int/lit8 v2, v2, 0x7

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    goto :goto_12

    .line 1178
    :cond_5d
    const/16 v2, 0x17

    if-ne v0, v2, :cond_64

    .line 1179
    iput-boolean v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInverseColors:Z

    goto :goto_12

    .line 1180
    :cond_64
    const/16 v2, 0x18

    if-ne v0, v2, :cond_6f

    .line 1181
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    and-int/lit8 v2, v2, 0x7

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto :goto_12

    .line 1182
    :cond_6f
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_76

    .line 1183
    iput-boolean v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInverseColors:Z

    goto :goto_12

    .line 1184
    :cond_76
    const/16 v2, 0x1e

    if-lt v0, v2, :cond_88

    const/16 v2, 0x25

    if-gt v0, v2, :cond_88

    .line 1185
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    and-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, -0x1e

    or-int/2addr v2, v3

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    goto :goto_12

    .line 1186
    :cond_88
    const/16 v2, 0x27

    if-ne v0, v2, :cond_9d

    .line 1187
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    and-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    .line 1188
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    and-int/lit8 v2, v2, 0x7

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto/16 :goto_12

    .line 1189
    :cond_9d
    const/16 v2, 0x28

    if-lt v0, v2, :cond_b0

    const/16 v2, 0x2f

    if-gt v0, v2, :cond_b0

    .line 1190
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    and-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, -0x28

    or-int/2addr v2, v3

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto/16 :goto_12

    .line 1191
    :cond_b0
    const/16 v2, 0x31

    if-ne v0, v2, :cond_12

    .line 1192
    iget v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    and-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto/16 :goto_12
.end method

.method private sendDeviceAttributes()V
    .registers 5

    .prologue
    .line 1262
    const/4 v1, 0x7

    new-array v0, v1, [B

    fill-array-data v0, :array_e

    .line 1280
    .local v0, "attributes":[B
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSession:Lhecticman/jsterm/emulatorview/TermSession;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lhecticman/jsterm/emulatorview/TermSession;->write([BII)V

    .line 1281
    return-void

    .line 1262
    :array_e
    .array-data 1
        0x1bt
        0x5bt
        0x3ft
        0x31t
        0x3bt
        0x32t
        0x63t
    .end array-data
.end method

.method private setAltCharSet(Z)V
    .registers 2
    .param p1, "alternateCharSet"    # Z

    .prologue
    .line 712
    iput-boolean p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAlternateCharSet:Z

    .line 713
    return-void
.end method

.method private setCursorCol(I)V
    .registers 3
    .param p1, "col"    # I

    .prologue
    .line 1509
    iput p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1511
    return-void
.end method

.method private setCursorPosition(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1244
    const/4 v1, 0x0

    .line 1245
    .local v1, "effectiveTopMargin":I
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    .line 1246
    .local v0, "effectiveBottomMargin":I
    iget v4, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_d

    .line 1247
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    .line 1248
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 1251
    :cond_d
    add-int v4, v1, p2

    .line 1252
    add-int/lit8 v5, v0, -0x1

    .line 1251
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1253
    .local v3, "newRow":I
    const/4 v4, 0x0

    iget v5, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1254
    .local v2, "newCol":I
    invoke-direct {p0, v3, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    .line 1255
    return-void
.end method

.method private setCursorRow(I)V
    .registers 3
    .param p1, "row"    # I

    .prologue
    .line 1504
    iput p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1506
    return-void
.end method

.method private setCursorRowCol(II)V
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 1514
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1515
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1517
    return-void
.end method

.method private setDefaultTabStops()V
    .registers 4

    .prologue
    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    if-lt v0, v1, :cond_6

    .line 504
    return-void

    .line 502
    :cond_6
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_14

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :goto_f
    aput-boolean v1, v2, v0

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    :cond_14
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private setHorizontalVerticalPosition()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1240
    invoke-direct {p0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg1(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorPosition(II)V

    .line 1241
    return-void
.end method

.method private startEscapeSequence(I)V
    .registers 5
    .param p1, "escapeState"    # I

    .prologue
    .line 796
    iput p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 797
    const/4 v1, 0x0

    iput v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    .line 798
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 801
    return-void

    .line 799
    :cond_b
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgs:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private unimplementedSequence(B)V
    .registers 2
    .param p1, "b"    # B

    .prologue
    .line 1338
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->finishSequence()V

    .line 1339
    return-void
.end method

.method private unknownParameter(I)V
    .registers 2
    .param p1, "parameter"    # I

    .prologue
    .line 1355
    return-void
.end method

.method private unknownSequence(B)V
    .registers 2
    .param p1, "b"    # B

    .prologue
    .line 1345
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->finishSequence()V

    .line 1346
    return-void
.end method


# virtual methods
.method public append([BII)V
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "base"    # I
    .param p3, "length"    # I

    .prologue
    .line 514
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, p3, :cond_4

    .line 533
    return-void

    .line 515
    :cond_4
    add-int v3, p2, v2

    aget-byte v0, p1, v3

    .line 525
    .local v0, "b":B
    :try_start_8
    invoke-direct {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->process(B)V

    .line 526
    iget v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mProcessedCharCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mProcessedCharCount:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_14

    .line 514
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 527
    :catch_14
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EmulatorView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while processing character "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    iget v5, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mProcessedCharCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 530
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 528
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public clearScrollCounter()V
    .registers 2

    .prologue
    .line 1524
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    .line 1525
    return-void
.end method

.method public final getCursorCol()I
    .registers 2

    .prologue
    .line 493
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public final getCursorRow()I
    .registers 2

    .prologue
    .line 484
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public final getKeypadApplicationMode()Z
    .registers 2

    .prologue
    .line 497
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mbKeypadApplicationMode:Z

    return v0
.end method

.method public getScrollCounter()I
    .registers 2

    .prologue
    .line 1520
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .registers 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 1598
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    invoke-interface {v0, p1, p2, p3, p4}, Lhecticman/jsterm/emulatorview/Screen;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTF8Mode()Z
    .registers 2

    .prologue
    .line 1581
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    return v0
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1531
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1532
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1533
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mArgIndex:I

    .line 1534
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    .line 1535
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 1536
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedCursorRow:I

    .line 1537
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedCursorCol:I

    .line 1538
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDecFlags:I

    .line 1539
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mSavedDecFlags:I

    .line 1540
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInsertMode:Z

    .line 1541
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAutomaticNewlineMode:Z

    .line 1542
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    .line 1543
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 1544
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1545
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    .line 1546
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    .line 1547
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInverseColors:Z

    .line 1548
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mbKeypadApplicationMode:Z

    .line 1549
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAlternateCharSet:Z

    .line 1551
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setDefaultTabStops()V

    .line 1552
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    invoke-direct {p0, v2, v2, v0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    .line 1554
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultUTF8Mode:Z

    invoke-virtual {p0, v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setUTF8Mode(Z)V

    .line 1555
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    .line 1556
    iput v2, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 1557
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1558
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInputCharBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1559
    return-void
.end method

.method public setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 3
    .param p1, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    .line 1589
    invoke-virtual {p1}, Lhecticman/jsterm/emulatorview/ColorScheme;->getForeColorIndex()I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    .line 1590
    invoke-virtual {p1}, Lhecticman/jsterm/emulatorview/ColorScheme;->getBackColorIndex()I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    .line 1593
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    .line 1594
    iget v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    .line 1595
    return-void
.end method

.method public setDefaultUTF8Mode(Z)V
    .registers 3
    .param p1, "defaultToUTF8Mode"    # Z

    .prologue
    .line 1562
    iput-boolean p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mDefaultUTF8Mode:Z

    .line 1563
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    if-nez v0, :cond_9

    .line 1564
    invoke-virtual {p0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setUTF8Mode(Z)V

    .line 1566
    :cond_9
    return-void
.end method

.method public setUTF8Mode(Z)V
    .registers 3
    .param p1, "utf8Mode"    # Z

    .prologue
    .line 1569
    if-eqz p1, :cond_13

    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    if-nez v0, :cond_13

    .line 1570
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 1571
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1572
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mInputCharBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1574
    :cond_13
    iput-boolean p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    .line 1575
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ModeNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    if-eqz v0, :cond_1e

    .line 1576
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ModeNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    invoke-interface {v0}, Lhecticman/jsterm/emulatorview/UpdateCallback;->onUpdate()V

    .line 1578
    :cond_1e
    return-void
.end method

.method public setUTF8ModeUpdateCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V
    .registers 2
    .param p1, "utf8ModeNotify"    # Lhecticman/jsterm/emulatorview/UpdateCallback;

    .prologue
    .line 1585
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mUTF8ModeNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    .line 1586
    return-void
.end method

.method public updateSize(II)V
    .registers 30
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_11

    .line 476
    :cond_10
    :goto_10
    return-void

    .line 359
    :cond_11
    if-gtz p1, :cond_2a

    .line 360
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rows:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    :cond_2a
    if-gtz p2, :cond_43

    .line 364
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rows:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_43
    const/4 v2, 0x2

    new-array v15, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    aput v4, v15, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    aput v4, v15, v2

    .line 369
    .local v15, "cursor":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1, v15}, Lhecticman/jsterm/emulatorview/Screen;->fastResize(II[I)Z

    move-result v17

    .line 371
    .local v17, "fastResize":Z
    const/4 v3, 0x0

    .line 372
    .local v3, "cursorColor":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 373
    .local v12, "charAtCursor":Ljava/lang/String;
    const/4 v14, 0x0

    .line 374
    .local v14, "colors":Ljava/lang/StringBuilder;
    const/16 v26, 0x0

    .line 375
    .local v26, "transcriptText":Ljava/lang/String;
    if-nez v17, :cond_b8

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "cursorColor":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .restart local v3    # "cursorColor":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v5, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v7, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-interface/range {v2 .. v7}, Lhecticman/jsterm/emulatorview/Screen;->getSelectedText(Ljava/lang/StringBuilder;IIII)Ljava/lang/String;

    move-result-object v12

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    move-object/from16 v0, p0

    iget v5, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v6, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/16 v7, 0x1b

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lhecticman/jsterm/emulatorview/Screen;->set(IIIII)V

    .line 384
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14    # "colors":Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .restart local v14    # "colors":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    invoke-interface {v2, v14}, Lhecticman/jsterm/emulatorview/Screen;->getTranscriptText(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v26

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    move-object/from16 v0, p0

    iget v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mForeColor:I

    move-object/from16 v0, p0

    iget v5, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBackColor:I

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v2, v0, v1, v4, v5}, Lhecticman/jsterm/emulatorview/Screen;->resize(IIII)V

    .line 390
    :cond_b8
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    move/from16 v0, p2

    if-eq v2, v0, :cond_d3

    .line 391
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    .line 392
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTopMargin:I

    .line 393
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 395
    :cond_d3
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_10c

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    move/from16 v22, v0

    .line 397
    .local v22, "oldColumns":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    move-object/from16 v23, v0

    .line 399
    .local v23, "oldTabStop":[Z
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mColumns:I

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    .line 400
    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 401
    .local v25, "toTransfer":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v0, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    .end local v22    # "oldColumns":I
    .end local v23    # "oldTabStop":[Z
    .end local v25    # "toTransfer":I
    :cond_10c
    if-eqz v17, :cond_134

    .line 406
    const/4 v2, 0x0

    aget v2, v15, v2

    if-ltz v2, :cond_128

    const/4 v2, 0x1

    aget v2, v15, v2

    if-ltz v2, :cond_128

    .line 407
    const/4 v2, 0x0

    aget v2, v15, v2

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 408
    const/4 v2, 0x1

    aget v2, v15, v2

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    goto/16 :goto_10

    .line 411
    :cond_128
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    goto/16 :goto_10

    .line 418
    :cond_134
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 420
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 422
    const/16 v20, -0x1

    .line 423
    .local v20, "newCursorRow":I
    const/16 v19, -0x1

    .line 424
    .local v19, "newCursorCol":I
    const/16 v21, -0x1

    .line 425
    .local v21, "newCursorTranscriptPos":I
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .line 426
    .local v16, "end":I
    :goto_14f
    if-ltz v16, :cond_15d

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_19a

    .line 431
    :cond_15d
    const/4 v13, 0x0

    .line 432
    .local v13, "colorOffset":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_160
    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_19d

    .line 461
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_10

    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_10

    .line 462
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 463
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    invoke-interface {v2}, Lhecticman/jsterm/emulatorview/Screen;->getActiveRows()I

    move-result v2

    sub-int v24, v2, v21

    .line 468
    .local v24, "scrollCount":I
    if-lez v24, :cond_228

    move/from16 v0, v24

    move/from16 v1, v20

    if-gt v0, v1, :cond_228

    .line 469
    move-object/from16 v0, p0

    iget v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    goto/16 :goto_10

    .line 427
    .end local v13    # "colorOffset":I
    .end local v18    # "i":I
    .end local v24    # "scrollCount":I
    :cond_19a
    add-int/lit8 v16, v16, -0x1

    goto :goto_14f

    .line 433
    .restart local v13    # "colorOffset":I
    .restart local v18    # "i":I
    :cond_19d
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 434
    .local v10, "c":C
    sub-int v2, v18, v13

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v8, v2, 0xf

    .line 435
    .local v8, "foreColor":I
    sub-int v2, v18, v13

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    and-int/lit8 v9, v2, 0xf

    .line 436
    .local v9, "backColor":I
    invoke-static {v10}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1d5

    .line 437
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 438
    .local v11, "cLow":C
    invoke-static {v10, v11}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v9}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(III)V

    .line 439
    add-int/lit8 v13, v13, 0x1

    .line 432
    .end local v11    # "cLow":C
    :cond_1d2
    :goto_1d2
    add-int/lit8 v18, v18, 0x1

    goto :goto_160

    .line 440
    :cond_1d5
    const/16 v2, 0xa

    if-ne v10, v2, :cond_1e3

    .line 441
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    .line 442
    invoke-direct/range {p0 .. p0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_1d2

    .line 443
    :cond_1e3
    const/16 v2, 0x1b

    if-ne v10, v2, :cond_222

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move/from16 v20, v0

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move/from16 v19, v0

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mScreen:Lhecticman/jsterm/emulatorview/Screen;

    invoke-interface {v2}, Lhecticman/jsterm/emulatorview/Screen;->getActiveRows()I

    move-result v21

    .line 449
    if-eqz v12, :cond_1d2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d2

    .line 451
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v8, v2, 0xf

    .line 452
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    and-int/lit8 v9, v2, 0xf

    .line 453
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit([CIIII)V

    goto :goto_1d2

    .line 456
    :cond_222
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v9}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->emit(III)V

    goto :goto_1d2

    .line 470
    .end local v8    # "foreColor":I
    .end local v9    # "backColor":I
    .end local v10    # "c":C
    .restart local v24    # "scrollCount":I
    :cond_228
    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_10

    .line 472
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 473
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_10
.end method
