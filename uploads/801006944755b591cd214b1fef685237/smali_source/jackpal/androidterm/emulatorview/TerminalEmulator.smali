.class Ljackpal/androidterm/emulatorview/TerminalEmulator;
.super Ljava/lang/Object;
.source "TerminalEmulator.java"


# static fields
.field private static final CHAR_SET_ALT_SPECIAL_GRAPICS:I = 0x4

.field private static final CHAR_SET_ALT_STANDARD:I = 0x3

.field private static final CHAR_SET_ASCII:I = 0x1

.field private static final CHAR_SET_SPECIAL_GRAPHICS:I = 0x2

.field private static final CHAR_SET_UK:I = 0x0

.field private static final DEFAULT_TO_AUTOWRAP_ENABLED:Z = true

.field private static final ESC:I = 0x1

.field private static final ESC_LEFT_SQUARE_BRACKET:I = 0x5

.field private static final ESC_LEFT_SQUARE_BRACKET_QUESTION_MARK:I = 0x6

.field private static final ESC_NONE:I = 0x0

.field private static final ESC_PERCENT:I = 0x7

.field private static final ESC_POUND:I = 0x2

.field private static final ESC_RIGHT_SQUARE_BRACKET:I = 0x8

.field private static final ESC_RIGHT_SQUARE_BRACKET_ESC:I = 0x9

.field private static final ESC_SELECT_LEFT_PAREN:I = 0x3

.field private static final ESC_SELECT_RIGHT_PAREN:I = 0x4

.field private static final K_132_COLUMN_MODE_MASK:I = 0x8

.field private static final K_DECSC_DECRC_MASK:I = 0xc0

.field private static final K_ORIGIN_MODE_MASK:I = 0x40

.field private static final K_REVERSE_VIDEO_MASK:I = 0x20

.field private static final K_SHOW_CURSOR_MASK:I = 0x2000000

.field private static final K_WRAPAROUND_MODE_MASK:I = 0x80

.field private static final MAX_ESCAPE_PARAMETERS:I = 0x10

.field private static final MAX_OSC_STRING_LENGTH:I = 0x200

.field private static final UNICODE_REPLACEMENT_CHAR:I = 0xfffd

.field private static final mSpecialGraphicsCharMap:[C


# instance fields
.field private mAboutToAutoWrap:Z

.field private mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

.field private mAlternateCharSet:Z

.field private mArgIndex:I

.field private mArgs:[I

.field private mBackColor:I

.field private mBottomMargin:I

.field private mCharSet:[I

.field private mColumns:I

.field private mContinueSequence:Z

.field private mCursorCol:I

.field private mCursorRow:I

.field private mDecFlags:I

.field private mDefaultBackColor:I

.field private mDefaultForeColor:I

.field private mDefaultUTF8Mode:Z

.field private mEffect:I

.field private mEscapeState:I

.field private mForeColor:I

.field private mInputCharBuffer:Ljava/nio/CharBuffer;

.field private mInsertMode:Z

.field private mJustWrapped:Z

.field private mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

.field private mLastEmittedCharWidth:I

.field private mMainBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

.field private mMouseTrackingMode:I

.field private mOSCArg:[B

.field private mOSCArgLength:I

.field private mOSCArgTokenizerIndex:I

.field private mProcessedCharCount:I

.field private mRows:I

.field private mSavedCursorCol:I

.field private mSavedCursorRow:I

.field private mSavedDecFlags:I

.field private mSavedDecFlags_DECSC_DECRC:I

.field private mSavedEffect:I

.field private mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

.field private mScrollCounter:I

.field private mSession:Ljackpal/androidterm/emulatorview/TermSession;

.field private mTabStop:[Z

.field private mTopMargin:I

.field private mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

.field private mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

.field private mUTF8EscapeUsed:Z

.field private mUTF8Mode:Z

.field private mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

.field private mUTF8ToFollow:I

.field private mUseAlternateCharSet:Z

.field private mbKeypadApplicationMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v2, 0x80

    const/16 v4, 0x68

    .line 335
    new-array v1, v2, [C

    sput-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    .line 337
    const/4 v0, 0x0

    .local v0, "i":C
    :goto_9
    if-ge v0, v2, :cond_13

    .line 338
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    aput-char v0, v1, v0

    .line 337
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_9

    .line 340
    :cond_13
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x5f

    const/16 v3, 0x20

    aput-char v3, v1, v2

    .line 341
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x62

    const/16 v3, 0x2409

    aput-char v3, v1, v2

    .line 342
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x63

    const/16 v3, 0x240c

    aput-char v3, v1, v2

    .line 343
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x64

    const/16 v3, 0x240d

    aput-char v3, v1, v2

    .line 344
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x65

    const/16 v3, 0x240a

    aput-char v3, v1, v2

    .line 345
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2424

    aput-char v2, v1, v4

    .line 346
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x69

    const/16 v3, 0x240b

    aput-char v3, v1, v2

    .line 347
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7d

    const/16 v3, 0xa3

    aput-char v3, v1, v2

    .line 348
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x66

    const/16 v3, 0xb0

    aput-char v3, v1, v2

    .line 349
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x60

    const/16 v3, 0x2b25

    aput-char v3, v1, v2

    .line 350
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7e

    const/16 v3, 0x2022

    aput-char v3, v1, v2

    .line 351
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x79

    const/16 v3, 0x2264

    aput-char v3, v1, v2

    .line 352
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7c

    const/16 v3, 0x2260

    aput-char v3, v1, v2

    .line 353
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7a

    const/16 v3, 0x2265

    aput-char v3, v1, v2

    .line 354
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x67

    const/16 v3, 0xb1

    aput-char v3, v1, v2

    .line 355
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x7b

    const/16 v3, 0x3c0

    aput-char v3, v1, v2

    .line 356
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2e

    const/16 v3, 0x25bc

    aput-char v3, v1, v2

    .line 357
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2c

    const/16 v3, 0x25c0

    aput-char v3, v1, v2

    .line 358
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2b

    const/16 v3, 0x25b6

    aput-char v3, v1, v2

    .line 359
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x2d

    const/16 v3, 0x25b2

    aput-char v3, v1, v2

    .line 360
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x23

    aput-char v2, v1, v4

    .line 361
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x61

    const/16 v3, 0x2592

    aput-char v3, v1, v2

    .line 362
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x30

    const/16 v3, 0x2588

    aput-char v3, v1, v2

    .line 363
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x71

    const/16 v3, 0x2500

    aput-char v3, v1, v2

    .line 364
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x78

    const/16 v3, 0x2502

    aput-char v3, v1, v2

    .line 365
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6d

    const/16 v3, 0x2514

    aput-char v3, v1, v2

    .line 366
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6a

    const/16 v3, 0x2518

    aput-char v3, v1, v2

    .line 367
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6c

    const/16 v3, 0x250c

    aput-char v3, v1, v2

    .line 368
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6b

    const/16 v3, 0x2510

    aput-char v3, v1, v2

    .line 369
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x77

    const/16 v3, 0x252c

    aput-char v3, v1, v2

    .line 370
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x75

    const/16 v3, 0x2524

    aput-char v3, v1, v2

    .line 371
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x74

    const/16 v3, 0x251c

    aput-char v3, v1, v2

    .line 372
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x76

    const/16 v3, 0x2534

    aput-char v3, v1, v2

    .line 373
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6e

    const/16 v3, 0x253c

    aput-char v3, v1, v2

    .line 374
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x6f

    const/16 v3, 0x23ba

    aput-char v3, v1, v2

    .line 375
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x70

    const/16 v3, 0x23bb

    aput-char v3, v1, v2

    .line 376
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x72

    const/16 v3, 0x23bc

    aput-char v3, v1, v2

    .line 377
    sget-object v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    const/16 v2, 0x73

    const/16 v3, 0x23bd

    aput-char v3, v1, v2

    .line 378
    return-void
.end method

.method public constructor <init>(Ljackpal/androidterm/emulatorview/TermSession;Ljackpal/androidterm/emulatorview/TranscriptScreen;IILjackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 9
    .param p1, "session"    # Ljackpal/androidterm/emulatorview/TermSession;
    .param p2, "screen"    # Ljackpal/androidterm/emulatorview/TranscriptScreen;
    .param p3, "columns"    # I
    .param p4, "rows"    # I
    .param p5, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    .line 93
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArg:[B

    .line 282
    iput v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mLastEmittedCharWidth:I

    .line 289
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mJustWrapped:Z

    .line 325
    new-array v0, v2, [I

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCharSet:[I

    .line 383
    iput v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    .line 389
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultUTF8Mode:Z

    .line 390
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    .line 391
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    .line 392
    iput v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 413
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSession:Ljackpal/androidterm/emulatorview/TermSession;

    .line 414
    iput-object p2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMainBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 415
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMainBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 416
    new-instance v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-direct {v0, p3, p4, p4, p5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;-><init>(IIILjackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 417
    iput p4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    .line 418
    iput p3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    .line 419
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    new-array v0, v0, [Z

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    .line 421
    invoke-virtual {p0, p5}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 423
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    .line 424
    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mInputCharBuffer:Ljava/nio/CharBuffer;

    .line 425
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 426
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 427
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 429
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->reset()V

    .line 430
    return-void
.end method

.method private autoWrapEnabled()Z
    .registers 2

    .prologue
    .line 1795
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private blockClear(III)V
    .registers 5
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I

    .prologue
    .line 1543
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    .line 1544
    return-void
.end method

.method private blockClear(IIII)V
    .registers 12
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    const/16 v5, 0x20

    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getStyle()I

    move-result v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->blockSet(IIIIII)V

    .line 1548
    return-void
.end method

.method private changeTitle(ILjava/lang/String;)V
    .registers 4
    .param p1, "parameter"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 1537
    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 1538
    :cond_5
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSession:Ljackpal/androidterm/emulatorview/TermSession;

    invoke-virtual {v0, p2}, Ljackpal/androidterm/emulatorview/TermSession;->setTitle(Ljava/lang/String;)V

    .line 1540
    :cond_a
    return-void
.end method

.method private checkColor(I)Z
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->isValidColor(I)Z

    move-result v0

    .line 1477
    .local v0, "result":Z
    if-nez v0, :cond_6

    .line 1483
    :cond_6
    return v0
.end method

.method private collectOSCArgs(B)V
    .registers 5
    .param p1, "b"    # B

    .prologue
    .line 1683
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgLength:I

    const/16 v1, 0x200

    if-ge v0, v1, :cond_14

    .line 1684
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArg:[B

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgLength:I

    aput-byte p1, v0, v1

    .line 1685
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence()V

    .line 1689
    :goto_13
    return-void

    .line 1687
    :cond_14
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    goto :goto_13
.end method

.method private computeEffectiveCharSet()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 882
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCharSet:[I

    iget-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAlternateCharSet:Z

    if-eqz v1, :cond_11

    move v1, v2

    :goto_9
    aget v0, v4, v1

    .line 883
    .local v0, "charSet":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    :goto_e
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUseAlternateCharSet:Z

    .line 884
    return-void

    .end local v0    # "charSet":I
    :cond_11
    move v1, v3

    .line 882
    goto :goto_9

    .restart local v0    # "charSet":I
    :cond_13
    move v2, v3

    .line 883
    goto :goto_e
.end method

.method private continueSequence()V
    .registers 2

    .prologue
    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    .line 1018
    return-void
.end method

.method private continueSequence(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 1021
    iput p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    .line 1023
    return-void
.end method

.method private doEsc(B)V
    .registers 9
    .param p1, "b"    # B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1073
    sparse-switch p1, :sswitch_data_b0

    .line 1162
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    .line 1165
    :goto_8
    return-void

    .line 1075
    :sswitch_9
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto :goto_8

    .line 1079
    :sswitch_e
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto :goto_8

    .line 1083
    :sswitch_13
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto :goto_8

    .line 1087
    :sswitch_18
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedCursorRow:I

    .line 1088
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedCursorCol:I

    .line 1089
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedEffect:I

    .line 1090
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int/lit16 v0, v0, 0xc0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedDecFlags_DECSC_DECRC:I

    goto :goto_8

    .line 1094
    :sswitch_2b
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedCursorRow:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedCursorCol:I

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    .line 1095
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedEffect:I

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    .line 1096
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int/lit16 v0, v0, -0xc1

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedDecFlags_DECSC_DECRC:I

    or-int/2addr v0, v1

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    goto :goto_8

    .line 1101
    :sswitch_40
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_8

    .line 1105
    :sswitch_44
    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    .line 1106
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_8

    .line 1110
    :sswitch_4b
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_8

    .line 1114
    :sswitch_53
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    aput-boolean v2, v0, v1

    goto :goto_8

    .line 1118
    :sswitch_5a
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    if-gt v0, v2, :cond_7d

    .line 1119
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v6, v5, 0x1

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->blockCopy(IIIIII)V

    .line 1121
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto :goto_8

    .line 1123
    :cond_7d
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    goto :goto_8

    .line 1129
    :sswitch_84
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unimplementedSequence(B)V

    goto :goto_8

    .line 1133
    :sswitch_88
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unimplementedSequence(B)V

    goto/16 :goto_8

    .line 1137
    :sswitch_8d
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unimplementedSequence(B)V

    goto/16 :goto_8

    .line 1141
    :sswitch_92
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->sendDeviceAttributes()V

    goto/16 :goto_8

    .line 1145
    :sswitch_97
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_8

    .line 1149
    :sswitch_9d
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mbKeypadApplicationMode:Z

    goto/16 :goto_8

    .line 1153
    :sswitch_a1
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->startCollectingOSCArgs()V

    .line 1154
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_8

    .line 1158
    :sswitch_ab
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mbKeypadApplicationMode:Z

    goto/16 :goto_8

    .line 1073
    nop

    :sswitch_data_b0
    .sparse-switch
        0x23 -> :sswitch_9
        0x28 -> :sswitch_e
        0x29 -> :sswitch_13
        0x30 -> :sswitch_88
        0x37 -> :sswitch_18
        0x38 -> :sswitch_2b
        0x3d -> :sswitch_9d
        0x3e -> :sswitch_ab
        0x44 -> :sswitch_40
        0x45 -> :sswitch_44
        0x46 -> :sswitch_4b
        0x48 -> :sswitch_53
        0x4d -> :sswitch_5a
        0x4e -> :sswitch_84
        0x50 -> :sswitch_8d
        0x5a -> :sswitch_92
        0x5b -> :sswitch_97
        0x5d -> :sswitch_a1
    .end sparse-switch
.end method

.method private doEscLSBQuest(B)V
    .registers 12
    .param p1, "b"    # B

    .prologue
    const/16 v9, 0x3eb

    const/16 v8, 0x3e8

    const/4 v7, 0x0

    .line 920
    invoke-direct {p0, v7}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 921
    .local v0, "arg":I
    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getDecFlagsMask(I)I

    move-result v2

    .line 922
    .local v2, "mask":I
    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    .line 923
    .local v4, "oldFlags":I
    sparse-switch p1, :sswitch_data_88

    .line 969
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->parseArg(B)V

    .line 973
    :cond_15
    :goto_15
    xor-int/lit8 v5, v4, -0x1

    iget v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int v3, v5, v6

    .line 974
    .local v3, "newlySetFlags":I
    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    xor-int v1, v4, v5

    .line 977
    .local v1, "changedFlags":I
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_2d

    .line 980
    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    invoke-direct {p0, v7, v7, v5, v6}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    .line 981
    invoke-direct {p0, v7, v7}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    .line 985
    :cond_2d
    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_34

    .line 987
    invoke-direct {p0, v7, v7}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorPosition(II)V

    .line 989
    :cond_34
    return-void

    .line 925
    .end local v1    # "changedFlags":I
    .end local v3    # "newlySetFlags":I
    :sswitch_35
    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    or-int/2addr v5, v2

    iput v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    .line 926
    sparse-switch v0, :sswitch_data_9a

    .line 938
    :cond_3d
    :goto_3d
    if-lt v0, v8, :cond_15

    if-gt v0, v9, :cond_15

    .line 939
    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMouseTrackingMode:I

    goto :goto_15

    .line 928
    :sswitch_44
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljackpal/androidterm/emulatorview/TermKeyListener;->setCursorKeysApplicationMode(Z)V

    goto :goto_3d

    .line 933
    :sswitch_4b
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    if-eqz v5, :cond_3d

    .line 934
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iput-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    goto :goto_3d

    .line 944
    :sswitch_54
    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    .line 945
    sparse-switch v0, :sswitch_data_ac

    .line 955
    :goto_5e
    if-lt v0, v8, :cond_15

    if-gt v0, v9, :cond_15

    .line 956
    iput v7, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMouseTrackingMode:I

    goto :goto_15

    .line 947
    :sswitch_65
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v5, v7}, Ljackpal/androidterm/emulatorview/TermKeyListener;->setCursorKeysApplicationMode(Z)V

    goto :goto_5e

    .line 952
    :sswitch_6b
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMainBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iput-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    goto :goto_5e

    .line 961
    :sswitch_70
    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v5, v6

    iget v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedDecFlags:I

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    iput v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    goto :goto_15

    .line 965
    :sswitch_7c
    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedDecFlags:I

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v5, v6

    iget v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    iput v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedDecFlags:I

    goto :goto_15

    .line 923
    :sswitch_data_88
    .sparse-switch
        0x68 -> :sswitch_35
        0x6c -> :sswitch_54
        0x72 -> :sswitch_70
        0x73 -> :sswitch_7c
    .end sparse-switch

    .line 926
    :sswitch_data_9a
    .sparse-switch
        0x1 -> :sswitch_44
        0x2f -> :sswitch_4b
        0x417 -> :sswitch_4b
        0x419 -> :sswitch_4b
    .end sparse-switch

    .line 945
    :sswitch_data_ac
    .sparse-switch
        0x1 -> :sswitch_65
        0x2f -> :sswitch_6b
        0x417 -> :sswitch_6b
        0x419 -> :sswitch_6b
    .end sparse-switch
.end method

.method private doEscLeftSquareBracket(B)V
    .registers 26
    .param p1, "b"    # B

    .prologue
    .line 1169
    packed-switch p1, :pswitch_data_396

    .line 1390
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->parseArg(B)V

    .line 1393
    :cond_6
    :goto_6
    return-void

    .line 1172
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    sub-int v14, v2, v3

    .line 1173
    .local v14, "charsAfterCursor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1174
    .local v16, "charsToInsert":I
    sub-int v5, v14, v16

    .line 1175
    .local v5, "charsToMove":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int v7, v7, v16

    move-object/from16 v0, p0

    iget v8, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual/range {v2 .. v8}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->blockCopy(IIIIII)V

    .line 1177
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto :goto_6

    .line 1182
    .end local v5    # "charsToMove":I
    .end local v14    # "charsAfterCursor":I
    .end local v16    # "charsToInsert":I
    :pswitch_48
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRow(I)V

    goto :goto_6

    .line 1186
    :pswitch_62
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRow(I)V

    goto :goto_6

    .line 1190
    :pswitch_7e
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_6

    .line 1194
    :pswitch_9b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_6

    .line 1198
    :pswitch_b3
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_6

    .line 1202
    :pswitch_d0
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setHorizontalVerticalPosition()V

    goto/16 :goto_6

    .line 1207
    :pswitch_d5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_402

    .line 1224
    invoke-direct/range {p0 .. p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    goto/16 :goto_6

    .line 1209
    :pswitch_e4
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    .line 1210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    iget v7, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_6

    .line 1215
    :pswitch_117
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    .line 1216
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1220
    :pswitch_138
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_6

    .line 1230
    :pswitch_149
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_40c

    .line 1244
    invoke-direct/range {p0 .. p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    goto/16 :goto_6

    .line 1232
    :pswitch_158
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1236
    :pswitch_170
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1240
    :pswitch_182
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1251
    :pswitch_192
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    sub-int v20, v2, v3

    .line 1252
    .local v20, "linesAfterCursor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 1253
    .local v22, "linesToInsert":I
    sub-int v10, v20, v22

    .line 1254
    .local v10, "linesToMove":I
    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v9, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int v12, v2, v22

    invoke-virtual/range {v6 .. v12}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->blockCopy(IIIIII)V

    .line 1256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v4, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_6

    .line 1262
    .end local v10    # "linesToMove":I
    .end local v20    # "linesAfterCursor":I
    .end local v22    # "linesToInsert":I
    :pswitch_1d4
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    sub-int v20, v2, v3

    .line 1263
    .restart local v20    # "linesAfterCursor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1264
    .local v21, "linesToDelete":I
    sub-int v10, v20, v21

    .line 1265
    .restart local v10    # "linesToMove":I
    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int v8, v2, v21

    move-object/from16 v0, p0

    iget v9, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual/range {v6 .. v12}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->blockCopy(IIIIII)V

    .line 1267
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v3, v4, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_6

    .line 1273
    .end local v10    # "linesToMove":I
    .end local v20    # "linesAfterCursor":I
    .end local v21    # "linesToDelete":I
    :pswitch_217
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    sub-int v14, v2, v3

    .line 1274
    .restart local v14    # "charsAfterCursor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1275
    .local v15, "charsToDelete":I
    sub-int v5, v14, v15

    .line 1276
    .restart local v5    # "charsToMove":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v8, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual/range {v2 .. v8}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->blockCopy(IIIIII)V

    .line 1278
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1283
    .end local v5    # "charsToMove":I
    .end local v14    # "charsAfterCursor":I
    .end local v15    # "charsToDelete":I
    :pswitch_257
    invoke-direct/range {p0 .. p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unimplementedSequence(B)V

    goto/16 :goto_6

    .line 1287
    :pswitch_25c
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_6

    .line 1291
    :pswitch_272
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->prevTabStop(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_6

    .line 1295
    :pswitch_283
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_6

    .line 1299
    :pswitch_28b
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->sendDeviceAttributes()V

    goto/16 :goto_6

    .line 1303
    :pswitch_290
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_6

    .line 1307
    :pswitch_2ad
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setHorizontalVerticalPosition()V

    goto/16 :goto_6

    .line 1311
    :pswitch_2b2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_416

    :pswitch_2bc
    goto/16 :goto_6

    .line 1313
    :pswitch_2be
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    goto/16 :goto_6

    .line 1317
    :pswitch_2cb
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2cd
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v19

    .line 1317
    add-int/lit8 v19, v19, 0x1

    goto :goto_2cd

    .line 1329
    .end local v19    # "i":I
    :pswitch_2df
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_6

    .line 1333
    :pswitch_2e7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_6

    .line 1338
    :pswitch_2ef
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->selectGraphicRendition()V

    goto/16 :goto_6

    .line 1343
    :pswitch_2f4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_422

    goto/16 :goto_6

    .line 1346
    :pswitch_300
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v18, v0

    fill-array-data v18, :array_42a

    .line 1347
    .local v18, "dsr":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSession:Ljackpal/androidterm/emulatorview/TermSession;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    array-length v4, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    goto/16 :goto_6

    .line 1353
    .end local v18    # "dsr":[B
    :pswitch_317
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "\u001b[%d;%dR"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 1355
    .local v17, "cpr":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSession:Ljackpal/androidterm/emulatorview/TermSession;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    goto/16 :goto_6

    .line 1379
    .end local v17    # "cpr":[B
    :pswitch_34f
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1380
    .local v23, "top":I
    add-int/lit8 v2, v23, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg1(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1381
    .local v13, "bottom":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    .line 1382
    move-object/from16 v0, p0

    iput v13, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 1385
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    goto/16 :goto_6

    .line 1169
    nop

    :pswitch_data_396
    .packed-switch 0x3f
        :pswitch_283
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
        :pswitch_149
        :pswitch_192
        :pswitch_1d4
        :pswitch_3
        :pswitch_3
        :pswitch_217
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_257
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_25c
        :pswitch_3
        :pswitch_272
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_28b
        :pswitch_290
        :pswitch_3
        :pswitch_2ad
        :pswitch_2b2
        :pswitch_2df
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2e7
        :pswitch_2ef
        :pswitch_2f4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_34f
    .end packed-switch

    .line 1207
    :pswitch_data_402
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_117
        :pswitch_138
    .end packed-switch

    .line 1230
    :pswitch_data_40c
    .packed-switch 0x0
        :pswitch_158
        :pswitch_170
        :pswitch_182
    .end packed-switch

    .line 1311
    :pswitch_data_416
    .packed-switch 0x0
        :pswitch_2be
        :pswitch_2bc
        :pswitch_2bc
        :pswitch_2cb
    .end packed-switch

    .line 1343
    :pswitch_data_422
    .packed-switch 0x5
        :pswitch_300
        :pswitch_317
    .end packed-switch

    .line 1346
    :array_42a
    .array-data 1
        0x1bt
        0x5bt
        0x30t
        0x6et
    .end array-data
.end method

.method private doEscPercent(B)V
    .registers 4
    .param p1, "b"    # B

    .prologue
    const/4 v1, 0x1

    .line 905
    sparse-switch p1, :sswitch_data_12

    .line 917
    :goto_4
    return-void

    .line 907
    :sswitch_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setUTF8Mode(Z)V

    .line 908
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    goto :goto_4

    .line 911
    :sswitch_c
    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setUTF8Mode(Z)V

    .line 912
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    goto :goto_4

    .line 905
    :sswitch_data_12
    .sparse-switch
        0x40 -> :sswitch_5
        0x47 -> :sswitch_c
    .end sparse-switch
.end method

.method private doEscPound(B)V
    .registers 9
    .param p1, "b"    # B

    .prologue
    const/4 v1, 0x0

    .line 1060
    packed-switch p1, :pswitch_data_1a

    .line 1067
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    .line 1070
    :goto_7
    return-void

    .line 1062
    :pswitch_8
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    const/16 v5, 0x45

    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getStyle()I

    move-result v6

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->blockSet(IIIIII)V

    goto :goto_7

    .line 1060
    nop

    :pswitch_data_1a
    .packed-switch 0x38
        :pswitch_8
    .end packed-switch
.end method

.method private doEscRightSquareBracket(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 1491
    sparse-switch p1, :sswitch_data_12

    .line 1499
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->collectOSCArgs(B)V

    .line 1502
    :goto_6
    return-void

    .line 1493
    :sswitch_7
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doOSC()V

    goto :goto_6

    .line 1496
    :sswitch_b
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    goto :goto_6

    .line 1491
    nop

    :sswitch_data_12
    .sparse-switch
        0x7 -> :sswitch_7
        0x1b -> :sswitch_b
    .end sparse-switch
.end method

.method private doEscRightSquareBracketEsc(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 1505
    packed-switch p1, :pswitch_data_16

    .line 1513
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->collectOSCArgs(B)V

    .line 1514
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->collectOSCArgs(B)V

    .line 1515
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence(I)V

    .line 1518
    :goto_10
    return-void

    .line 1507
    :pswitch_11
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doOSC()V

    goto :goto_10

    .line 1505
    nop

    :pswitch_data_16
    .packed-switch 0x5c
        :pswitch_11
    .end packed-switch
.end method

.method private doEscSelectLeftParen(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doSelectCharSet(IB)V

    .line 1027
    return-void
.end method

.method private doEscSelectRightParen(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 1030
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doSelectCharSet(IB)V

    .line 1031
    return-void
.end method

.method private doLinefeed()V
    .registers 3

    .prologue
    .line 1008
    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v1, 0x1

    .line 1009
    .local v0, "newCursorRow":I
    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    if-lt v0, v1, :cond_f

    .line 1010
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->scroll()V

    .line 1011
    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v0, v1, -0x1

    .line 1013
    :cond_f
    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRow(I)V

    .line 1014
    return-void
.end method

.method private doOSC()V
    .registers 3

    .prologue
    .line 1521
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->startTokenizingOSC()V

    .line 1522
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->nextOSCInt(I)I

    move-result v0

    .line 1523
    .local v0, "ps":I
    packed-switch v0, :pswitch_data_1c

    .line 1530
    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownParameter(I)V

    .line 1533
    :goto_f
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->finishSequence()V

    .line 1534
    return-void

    .line 1527
    :pswitch_13
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->nextOSCString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->changeTitle(ILjava/lang/String;)V

    goto :goto_f

    .line 1523
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method private doSelectCharSet(IB)V
    .registers 5
    .param p1, "charSetIndex"    # I
    .param p2, "b"    # B

    .prologue
    .line 1035
    sparse-switch p2, :sswitch_data_18

    .line 1052
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    .line 1057
    :goto_6
    return-void

    .line 1037
    :sswitch_7
    const/4 v0, 0x0

    .line 1055
    .local v0, "charSet":I
    :goto_8
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCharSet:[I

    aput v0, v1, p1

    .line 1056
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->computeEffectiveCharSet()V

    goto :goto_6

    .line 1040
    .end local v0    # "charSet":I
    :sswitch_10
    const/4 v0, 0x1

    .line 1041
    .restart local v0    # "charSet":I
    goto :goto_8

    .line 1043
    .end local v0    # "charSet":I
    :sswitch_12
    const/4 v0, 0x2

    .line 1044
    .restart local v0    # "charSet":I
    goto :goto_8

    .line 1046
    .end local v0    # "charSet":I
    :sswitch_14
    const/4 v0, 0x3

    .line 1047
    .restart local v0    # "charSet":I
    goto :goto_8

    .line 1049
    .end local v0    # "charSet":I
    :sswitch_16
    const/4 v0, 0x4

    .line 1050
    .restart local v0    # "charSet":I
    goto :goto_8

    .line 1035
    :sswitch_data_18
    .sparse-switch
        0x30 -> :sswitch_12
        0x31 -> :sswitch_14
        0x32 -> :sswitch_16
        0x41 -> :sswitch_7
        0x42 -> :sswitch_10
    .end sparse-switch
.end method

.method private doSetMode(Z)V
    .registers 4
    .param p1, "newValue"    # Z

    .prologue
    .line 1567
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v0

    .line 1568
    .local v0, "modeBit":I
    packed-switch v0, :pswitch_data_10

    .line 1574
    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownParameter(I)V

    .line 1577
    :goto_b
    return-void

    .line 1570
    :pswitch_c
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mInsertMode:Z

    goto :goto_b

    .line 1568
    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch
.end method

.method private emit(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 1861
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUseAlternateCharSet:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x80

    if-ge p1, v0, :cond_10

    .line 1862
    sget-object v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSpecialGraphicsCharMap:[C

    aget-char v0, v0, p1

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(I)V

    .line 1866
    :goto_f
    return-void

    .line 1864
    :cond_10
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(I)V

    goto :goto_f
.end method

.method private emit(I)V
    .registers 3
    .param p1, "c"    # I

    .prologue
    .line 1857
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getStyle()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(II)V

    .line 1858
    return-void
.end method

.method private emit(II)V
    .registers 13
    .param p1, "c"    # I
    .param p2, "style"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 1806
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->autoWrapEnabled()Z

    move-result v7

    .line 1807
    .local v7, "autoWrap":Z
    invoke-static {p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v8

    .line 1809
    .local v8, "width":I
    if-eqz v7, :cond_34

    .line 1810
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_34

    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x2

    if-ne v8, v0, :cond_34

    .line 1811
    :cond_1b
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->setLineWrap(I)V

    .line 1812
    iput v9, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1813
    iput-boolean v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mJustWrapped:Z

    .line 1814
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    if-ge v0, v1, :cond_8f

    .line 1815
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1822
    :cond_34
    :goto_34
    iget-boolean v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mInsertMode:Z

    if-eqz v8, :cond_93

    move v0, v4

    :goto_39
    and-int/2addr v0, v1

    if-eqz v0, :cond_52

    .line 1823
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int v5, v0, v8

    .line 1824
    .local v5, "destCol":I
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    if-ge v5, v0, :cond_52

    .line 1825
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, v5

    iget v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual/range {v0 .. v6}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->blockCopy(IIIIII)V

    .line 1830
    .end local v5    # "destCol":I
    :cond_52
    if-nez v8, :cond_a2

    .line 1832
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mJustWrapped:Z

    if-eqz v0, :cond_95

    .line 1833
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mLastEmittedCharWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, p1, p2}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->set(IIII)V

    .line 1842
    :goto_66
    if-eqz v7, :cond_7d

    .line 1843
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_ae

    :goto_70
    iput-boolean v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1846
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v0, :cond_7d

    .line 1847
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->setLineWrap(I)V

    .line 1850
    :cond_7d
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v8

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1851
    if-lez v8, :cond_8e

    .line 1852
    iput v8, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mLastEmittedCharWidth:I

    .line 1854
    :cond_8e
    return-void

    .line 1817
    :cond_8f
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->scroll()V

    goto :goto_34

    :cond_93
    move v0, v9

    .line 1822
    goto :goto_39

    .line 1835
    :cond_95
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mLastEmittedCharWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v0, v1, v2, p1, p2}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->set(IIII)V

    goto :goto_66

    .line 1838
    :cond_a2
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v0, v1, v2, p1, p2}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->set(IIII)V

    .line 1839
    iput-boolean v9, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mJustWrapped:Z

    goto :goto_66

    :cond_ae
    move v4, v9

    .line 1843
    goto :goto_70
.end method

.method private emit([C)V
    .registers 4
    .param p1, "c"    # [C

    .prologue
    const/4 v1, 0x0

    .line 1874
    aget-char v0, p1, v1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1875
    aget-char v0, p1, v1

    const/4 v1, 0x1

    aget-char v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(I)V

    .line 1879
    :goto_15
    return-void

    .line 1877
    :cond_16
    aget-char v0, p1, v1

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(I)V

    goto :goto_15
.end method

.method private emit([CIII)V
    .registers 8
    .param p1, "c"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "style"    # I

    .prologue
    .line 1887
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_7

    .line 1888
    aget-char v1, p1, v0

    if-nez v1, :cond_8

    .line 1898
    :cond_7
    return-void

    .line 1891
    :cond_8
    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1892
    aget-char v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-char v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    invoke-direct {p0, v1, p4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(II)V

    .line 1893
    add-int/lit8 v0, v0, 0x1

    .line 1887
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1895
    :cond_22
    aget-char v1, p1, v0

    invoke-direct {p0, v1, p4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(II)V

    goto :goto_1f
.end method

.method private finishSequence()V
    .registers 2

    .prologue
    .line 1791
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 1792
    return-void
.end method

.method private getArg(IIZ)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I
    .param p3, "treatZeroAsDefault"    # Z

    .prologue
    .line 1671
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    aget v0, v1, p1

    .line 1672
    .local v0, "result":I
    if-ltz v0, :cond_a

    if-nez v0, :cond_b

    if-eqz p3, :cond_b

    .line 1673
    :cond_a
    move v0, p2

    .line 1675
    :cond_b
    return v0
.end method

.method private getArg0(I)I
    .registers 4
    .param p1, "defaultValue"    # I

    .prologue
    .line 1662
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getArg1(I)I
    .registers 3
    .param p1, "defaultValue"    # I

    .prologue
    const/4 v0, 0x1

    .line 1666
    invoke-direct {p0, v0, p1, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg(IIZ)I

    move-result v0

    return v0
.end method

.method private getBackColor()I
    .registers 2

    .prologue
    .line 1555
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBackColor:I

    return v0
.end method

.method private getDecFlagsMask(I)I
    .registers 4
    .param p1, "argument"    # I

    .prologue
    const/4 v1, 0x1

    .line 992
    if-lt p1, v1, :cond_a

    const/16 v0, 0x20

    if-gt p1, v0, :cond_a

    .line 993
    shl-int v0, v1, p1

    .line 996
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getEffect()I
    .registers 2

    .prologue
    .line 1559
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    return v0
.end method

.method private getForeColor()I
    .registers 2

    .prologue
    .line 1551
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mForeColor:I

    return v0
.end method

.method private getStyle()I
    .registers 4

    .prologue
    .line 1563
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getForeColor()I

    move-result v0

    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getBackColor()I

    move-result v1

    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getEffect()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljackpal/androidterm/emulatorview/TextStyle;->encode(III)I

    move-result v0

    return v0
.end method

.method private handleUTF8Sequence(B)Z
    .registers 11
    .param p1, "b"    # B

    .prologue
    const v8, 0xfffd

    const/16 v7, 0x80

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 814
    iget v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    if-nez v6, :cond_10

    and-int/lit16 v6, p1, 0x80

    if-nez v6, :cond_10

    .line 873
    :goto_f
    return v4

    .line 819
    :cond_10
    iget v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    if-lez v6, :cond_66

    .line 820
    and-int/lit16 v6, p1, 0xc0

    if-eq v6, v7, :cond_27

    .line 823
    iput v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 824
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 825
    invoke-direct {p0, v8}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(I)V

    .line 830
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->handleUTF8Sequence(B)Z

    move-result v4

    goto :goto_f

    .line 833
    :cond_27
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 834
    iget v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    if-nez v6, :cond_60

    .line 836
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    .line 837
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mInputCharBuffer:Ljava/nio/CharBuffer;

    .line 838
    .local v1, "charBuf":Ljava/nio/CharBuffer;
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 840
    .local v3, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 841
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 842
    invoke-virtual {v3, v0, v1, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 843
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 845
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    .line 846
    .local v2, "chars":[C
    aget-char v6, v2, v4

    if-lt v6, v7, :cond_62

    aget-char v6, v2, v4

    const/16 v7, 0x9f

    if-gt v6, v7, :cond_62

    .line 849
    aget-char v6, v2, v4

    int-to-byte v6, v6

    invoke-direct {p0, v6, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->process(BZ)V

    .line 854
    :goto_5a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 855
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "charBuf":Ljava/nio/CharBuffer;
    .end local v2    # "chars":[C
    .end local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_60
    :goto_60
    move v4, v5

    .line 873
    goto :goto_f

    .line 851
    .restart local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v1    # "charBuf":Ljava/nio/CharBuffer;
    .restart local v2    # "chars":[C
    .restart local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_62
    invoke-direct {p0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit([C)V

    goto :goto_5a

    .line 858
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "charBuf":Ljava/nio/CharBuffer;
    .end local v2    # "chars":[C
    .end local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_66
    and-int/lit16 v4, p1, 0xe0

    const/16 v6, 0xc0

    if-ne v4, v6, :cond_74

    .line 859
    iput v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 870
    :goto_6e
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_60

    .line 860
    :cond_74
    and-int/lit16 v4, p1, 0xf0

    const/16 v6, 0xe0

    if-ne v4, v6, :cond_7e

    .line 861
    const/4 v4, 0x2

    iput v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    goto :goto_6e

    .line 862
    :cond_7e
    and-int/lit16 v4, p1, 0xf8

    const/16 v6, 0xf0

    if-ne v4, v6, :cond_88

    .line 863
    const/4 v4, 0x3

    iput v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    goto :goto_6e

    .line 866
    :cond_88
    invoke-direct {p0, v8}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(I)V

    move v4, v5

    .line 867
    goto :goto_f
.end method

.method private isValidColor(I)Z
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 1487
    if-ltz p1, :cond_8

    const/16 v0, 0x104

    if-ge p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private logError(Ljava/lang/String;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1787
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->finishSequence()V

    .line 1788
    return-void
.end method

.method private logError(Ljava/lang/String;B)V
    .registers 3
    .param p1, "errorType"    # Ljava/lang/String;
    .param p2, "b"    # B

    .prologue
    .line 1781
    return-void
.end method

.method private nextOSCInt(I)I
    .registers 7
    .param p1, "delimiter"    # I

    .prologue
    .line 1716
    const/4 v1, -0x1

    .line 1717
    .local v1, "value":I
    :goto_1
    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgTokenizerIndex:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgLength:I

    if-ge v2, v3, :cond_13

    .line 1718
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArg:[B

    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgTokenizerIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgTokenizerIndex:I

    aget-byte v0, v2, v3

    .line 1719
    .local v0, "b":B
    if-ne v0, p1, :cond_14

    .line 1730
    .end local v0    # "b":B
    :cond_13
    return v1

    .line 1721
    .restart local v0    # "b":B
    :cond_14
    const/16 v2, 0x30

    if-lt v0, v2, :cond_25

    const/16 v2, 0x39

    if-gt v0, v2, :cond_25

    .line 1722
    if-gez v1, :cond_1f

    .line 1723
    const/4 v1, 0x0

    .line 1725
    :cond_1f
    mul-int/lit8 v2, v1, 0xa

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x30

    goto :goto_1

    .line 1727
    :cond_25
    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    goto :goto_1
.end method

.method private nextOSCString(I)Ljava/lang/String;
    .registers 10
    .param p1, "delimiter"    # I

    .prologue
    .line 1696
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgTokenizerIndex:I

    .line 1697
    .local v3, "start":I
    move v2, v3

    .line 1698
    .local v2, "end":I
    :goto_3
    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgTokenizerIndex:I

    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgLength:I

    if-ge v4, v5, :cond_15

    .line 1699
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArg:[B

    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgTokenizerIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgTokenizerIndex:I

    aget-byte v0, v4, v5

    .line 1700
    .local v0, "b":B
    if-ne v0, p1, :cond_1a

    .line 1705
    .end local v0    # "b":B
    :cond_15
    if-ne v3, v2, :cond_1d

    .line 1706
    const-string v4, ""

    .line 1711
    :goto_19
    return-object v4

    .line 1703
    .restart local v0    # "b":B
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 1704
    goto :goto_3

    .line 1709
    .end local v0    # "b":B
    :cond_1d
    :try_start_1d
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArg:[B

    sub-int v6, v2, v3

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_19

    .line 1710
    :catch_29
    move-exception v1

    .line 1711
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArg:[B

    sub-int v6, v2, v3

    invoke-direct {v4, v5, v3, v6}, Ljava/lang/String;-><init>([BII)V

    goto :goto_19
.end method

.method private nextTabStop(I)I
    .registers 4
    .param p1, "cursorCol"    # I

    .prologue
    .line 887
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_2
    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_10

    .line 888
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_d

    .line 892
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 887
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 892
    :cond_10
    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_c
.end method

.method private parseArg(B)V
    .registers 7
    .param p1, "b"    # B

    .prologue
    .line 1638
    const/16 v3, 0x30

    if-lt p1, v3, :cond_29

    const/16 v3, 0x39

    if-gt p1, v3, :cond_29

    .line 1639
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    array-length v4, v4

    if-ge v3, v4, :cond_23

    .line 1640
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    aget v0, v3, v4

    .line 1641
    .local v0, "oldValue":I
    add-int/lit8 v1, p1, -0x30

    .line 1643
    .local v1, "thisDigit":I
    if-ltz v0, :cond_27

    .line 1644
    mul-int/lit8 v3, v0, 0xa

    add-int v2, v3, v1

    .line 1648
    .local v2, "value":I
    :goto_1d
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    aput v2, v3, v4

    .line 1650
    .end local v0    # "oldValue":I
    .end local v1    # "thisDigit":I
    .end local v2    # "value":I
    :cond_23
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence()V

    .line 1659
    :goto_26
    return-void

    .line 1646
    .restart local v0    # "oldValue":I
    .restart local v1    # "thisDigit":I
    :cond_27
    move v2, v1

    .restart local v2    # "value":I
    goto :goto_1d

    .line 1651
    .end local v0    # "oldValue":I
    .end local v1    # "thisDigit":I
    .end local v2    # "value":I
    :cond_29
    const/16 v3, 0x3b

    if-ne p1, v3, :cond_3e

    .line 1652
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3a

    .line 1653
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    .line 1655
    :cond_3a
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->continueSequence()V

    goto :goto_26

    .line 1657
    :cond_3e
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    goto :goto_26
.end method

.method private prevTabStop(I)I
    .registers 4
    .param p1, "cursorCol"    # I

    .prologue
    .line 896
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_e

    .line 897
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_b

    .line 901
    .end local v0    # "i":I
    :goto_a
    return v0

    .line 896
    .restart local v0    # "i":I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 901
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private process(B)V
    .registers 3
    .param p1, "b"    # B

    .prologue
    .line 681
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->process(BZ)V

    .line 682
    return-void
.end method

.method private process(BZ)V
    .registers 8
    .param p1, "b"    # B
    .param p2, "doUTF8"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 686
    if-eqz p2, :cond_11

    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->handleUTF8Sequence(B)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 811
    :cond_10
    :goto_10
    :pswitch_10
    return-void

    .line 691
    :cond_11
    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2b

    and-int/lit8 v0, p1, 0x7f

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2b

    .line 694
    const/16 v0, 0x1b

    invoke-direct {p0, v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->process(BZ)V

    .line 695
    and-int/lit8 v0, p1, 0x7f

    add-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    invoke-direct {p0, v0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->process(BZ)V

    goto :goto_10

    .line 699
    :cond_2b
    packed-switch p1, :pswitch_data_b2

    .line 758
    :pswitch_2e
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    .line 759
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    packed-switch v0, :pswitch_data_ee

    .line 803
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->unknownSequence(B)V

    .line 806
    :cond_38
    :goto_38
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    if-nez v0, :cond_10

    .line 807
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    goto :goto_10

    .line 707
    :pswitch_3f
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    if-ne v0, v4, :cond_10

    .line 708
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscRightSquareBracket(B)V

    goto :goto_10

    .line 713
    :pswitch_47
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto :goto_10

    .line 718
    :pswitch_53
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->nextTabStop(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto :goto_10

    .line 722
    :pswitch_5d
    invoke-direct {p0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    goto :goto_10

    .line 728
    :pswitch_61
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_10

    .line 732
    :pswitch_65
    invoke-direct {p0, v3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setAltCharSet(Z)V

    goto :goto_10

    .line 736
    :pswitch_69
    invoke-direct {p0, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setAltCharSet(Z)V

    goto :goto_10

    .line 742
    :pswitch_6d
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    if-eqz v0, :cond_10

    .line 743
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 744
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(B)V

    goto :goto_10

    .line 750
    :pswitch_79
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    if-eq v0, v4, :cond_81

    .line 751
    invoke-direct {p0, v3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->startEscapeSequence(I)V

    goto :goto_10

    .line 753
    :cond_81
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscRightSquareBracket(B)V

    goto :goto_10

    .line 761
    :pswitch_85
    const/16 v0, 0x20

    if-lt p1, v0, :cond_38

    .line 762
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(B)V

    goto :goto_38

    .line 767
    :pswitch_8d
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEsc(B)V

    goto :goto_38

    .line 771
    :pswitch_91
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscPound(B)V

    goto :goto_38

    .line 775
    :pswitch_95
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscSelectLeftParen(B)V

    goto :goto_38

    .line 779
    :pswitch_99
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscSelectRightParen(B)V

    goto :goto_38

    .line 783
    :pswitch_9d
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscLeftSquareBracket(B)V

    goto :goto_38

    .line 787
    :pswitch_a1
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscLSBQuest(B)V

    goto :goto_38

    .line 791
    :pswitch_a5
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscPercent(B)V

    goto :goto_38

    .line 795
    :pswitch_a9
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscRightSquareBracket(B)V

    goto :goto_38

    .line 799
    :pswitch_ad
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doEscRightSquareBracketEsc(B)V

    goto :goto_38

    .line 699
    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_3f
        :pswitch_47
        :pswitch_53
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_5d
        :pswitch_65
        :pswitch_69
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_6d
        :pswitch_2e
        :pswitch_6d
        :pswitch_79
    .end packed-switch

    .line 759
    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_85
        :pswitch_8d
        :pswitch_91
        :pswitch_95
        :pswitch_99
        :pswitch_9d
        :pswitch_a1
        :pswitch_a5
        :pswitch_a9
        :pswitch_ad
    .end packed-switch
.end method

.method private scroll()V
    .registers 5

    .prologue
    .line 1628
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    .line 1629
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getStyle()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->scroll(III)V

    .line 1630
    return-void
.end method

.method private selectGraphicRendition()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 1397
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    if-gt v2, v3, :cond_153

    .line 1398
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    aget v0, v3, v2

    .line 1399
    .local v0, "code":I
    if-gez v0, :cond_16

    .line 1400
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    if-lez v3, :cond_15

    .line 1397
    :cond_12
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1403
    :cond_15
    const/4 v0, 0x0

    .line 1409
    :cond_16
    if-nez v0, :cond_23

    .line 1410
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mForeColor:I

    .line 1411
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBackColor:I

    .line 1412
    iput v6, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1413
    :cond_23
    if-ne v0, v7, :cond_2c

    .line 1414
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1415
    :cond_2c
    const/4 v3, 0x3

    if-ne v0, v3, :cond_36

    .line 1416
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1417
    :cond_36
    const/4 v3, 0x4

    if-ne v0, v3, :cond_40

    .line 1418
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1419
    :cond_40
    if-ne v0, v5, :cond_49

    .line 1420
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1421
    :cond_49
    const/4 v3, 0x7

    if-ne v0, v3, :cond_53

    .line 1422
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1423
    :cond_53
    const/16 v3, 0x8

    if-ne v0, v3, :cond_5e

    .line 1424
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1425
    :cond_5e
    const/16 v3, 0xa

    if-ne v0, v3, :cond_66

    .line 1426
    invoke-direct {p0, v6}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setAltCharSet(Z)V

    goto :goto_12

    .line 1427
    :cond_66
    const/16 v3, 0xb

    if-ne v0, v3, :cond_6e

    .line 1428
    invoke-direct {p0, v7}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setAltCharSet(Z)V

    goto :goto_12

    .line 1429
    :cond_6e
    const/16 v3, 0x16

    if-ne v0, v3, :cond_79

    .line 1431
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1432
    :cond_79
    const/16 v3, 0x17

    if-ne v0, v3, :cond_84

    .line 1433
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1434
    :cond_84
    const/16 v3, 0x18

    if-ne v0, v3, :cond_8f

    .line 1435
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto :goto_12

    .line 1436
    :cond_8f
    const/16 v3, 0x19

    if-ne v0, v3, :cond_9b

    .line 1437
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto/16 :goto_12

    .line 1438
    :cond_9b
    const/16 v3, 0x1b

    if-ne v0, v3, :cond_a7

    .line 1439
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto/16 :goto_12

    .line 1440
    :cond_a7
    const/16 v3, 0x1c

    if-ne v0, v3, :cond_b3

    .line 1441
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEffect:I

    goto/16 :goto_12

    .line 1442
    :cond_b3
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_c1

    const/16 v3, 0x25

    if-gt v0, v3, :cond_c1

    .line 1443
    add-int/lit8 v3, v0, -0x1e

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mForeColor:I

    goto/16 :goto_12

    .line 1444
    :cond_c1
    const/16 v3, 0x26

    if-ne v0, v3, :cond_e5

    add-int/lit8 v3, v2, 0x2

    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    if-gt v3, v4, :cond_e5

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    if-ne v3, v5, :cond_e5

    .line 1445
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v2, 0x2

    aget v1, v3, v4

    .line 1446
    .local v1, "color":I
    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->checkColor(I)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 1447
    iput v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mForeColor:I

    .line 1449
    :cond_e1
    add-int/lit8 v2, v2, 0x2

    .line 1450
    goto/16 :goto_12

    .end local v1    # "color":I
    :cond_e5
    const/16 v3, 0x27

    if-ne v0, v3, :cond_ef

    .line 1451
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mForeColor:I

    goto/16 :goto_12

    .line 1452
    :cond_ef
    const/16 v3, 0x28

    if-lt v0, v3, :cond_fd

    const/16 v3, 0x2f

    if-gt v0, v3, :cond_fd

    .line 1453
    add-int/lit8 v3, v0, -0x28

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto/16 :goto_12

    .line 1454
    :cond_fd
    const/16 v3, 0x30

    if-ne v0, v3, :cond_129

    add-int/lit8 v3, v2, 0x2

    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    if-gt v3, v4, :cond_129

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    if-ne v3, v5, :cond_129

    .line 1455
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v2, 0x2

    aget v3, v3, v4

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBackColor:I

    .line 1456
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    add-int/lit8 v4, v2, 0x2

    aget v1, v3, v4

    .line 1457
    .restart local v1    # "color":I
    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->checkColor(I)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 1458
    iput v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBackColor:I

    .line 1460
    :cond_125
    add-int/lit8 v2, v2, 0x2

    .line 1461
    goto/16 :goto_12

    .end local v1    # "color":I
    :cond_129
    const/16 v3, 0x31

    if-ne v0, v3, :cond_133

    .line 1462
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto/16 :goto_12

    .line 1463
    :cond_133
    const/16 v3, 0x5a

    if-lt v0, v3, :cond_143

    const/16 v3, 0x61

    if-gt v0, v3, :cond_143

    .line 1464
    add-int/lit8 v3, v0, -0x5a

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mForeColor:I

    goto/16 :goto_12

    .line 1465
    :cond_143
    const/16 v3, 0x64

    if-lt v0, v3, :cond_12

    const/16 v3, 0x6b

    if-gt v0, v3, :cond_12

    .line 1466
    add-int/lit8 v3, v0, -0x64

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBackColor:I

    goto/16 :goto_12

    .line 1473
    .end local v0    # "code":I
    :cond_153
    return-void
.end method

.method private sendDeviceAttributes()V
    .registers 5

    .prologue
    .line 1604
    const/4 v1, 0x7

    new-array v0, v1, [B

    fill-array-data v0, :array_e

    .line 1623
    .local v0, "attributes":[B
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSession:Ljackpal/androidterm/emulatorview/TermSession;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    .line 1624
    return-void

    .line 1604
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
    .line 877
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAlternateCharSet:Z

    .line 878
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->computeEffectiveCharSet()V

    .line 879
    return-void
.end method

.method private setCursorCol(I)V
    .registers 3
    .param p1, "col"    # I

    .prologue
    .line 1906
    iput p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1907
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1908
    return-void
.end method

.method private setCursorPosition(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1587
    const/4 v1, 0x0

    .line 1588
    .local v1, "effectiveTopMargin":I
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    .line 1589
    .local v0, "effectiveBottomMargin":I
    iget v4, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_d

    .line 1590
    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    .line 1591
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 1593
    :cond_d
    add-int v4, v1, p2

    add-int/lit8 v5, v0, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1596
    .local v3, "newRow":I
    const/4 v4, 0x0

    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1597
    .local v2, "newCol":I
    invoke-direct {p0, v3, v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorRowCol(II)V

    .line 1598
    return-void
.end method

.method private setCursorRow(I)V
    .registers 3
    .param p1, "row"    # I

    .prologue
    .line 1901
    iput p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1902
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1903
    return-void
.end method

.method private setCursorRowCol(II)V
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 1911
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1912
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1913
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1914
    return-void
.end method

.method private setDefaultTabStops()V
    .registers 4

    .prologue
    .line 651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_15

    .line 652
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_13

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :goto_e
    aput-boolean v1, v2, v0

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 652
    :cond_13
    const/4 v1, 0x0

    goto :goto_e

    .line 654
    :cond_15
    return-void
.end method

.method private setHorizontalVerticalPosition()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1583
    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg1(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorPosition(II)V

    .line 1584
    return-void
.end method

.method private startCollectingOSCArgs()V
    .registers 2

    .prologue
    .line 1679
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgLength:I

    .line 1680
    return-void
.end method

.method private startEscapeSequence(I)V
    .registers 5
    .param p1, "escapeState"    # I

    .prologue
    .line 1000
    iput p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 1001
    const/4 v1, 0x0

    iput v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    .line 1002
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    const/16 v1, 0x10

    if-ge v0, v1, :cond_12

    .line 1003
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgs:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1005
    :cond_12
    return-void
.end method

.method private startTokenizingOSC()V
    .registers 2

    .prologue
    .line 1692
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mOSCArgTokenizerIndex:I

    .line 1693
    return-void
.end method

.method private unimplementedSequence(B)V
    .registers 2
    .param p1, "b"    # B

    .prologue
    .line 1737
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->finishSequence()V

    .line 1738
    return-void
.end method

.method private unknownParameter(I)V
    .registers 2
    .param p1, "parameter"    # I

    .prologue
    .line 1754
    return-void
.end method

.method private unknownSequence(B)V
    .registers 2
    .param p1, "b"    # B

    .prologue
    .line 1744
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->finishSequence()V

    .line 1745
    return-void
.end method


# virtual methods
.method public append([BII)V
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "base"    # I
    .param p3, "length"    # I

    .prologue
    .line 667
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_41

    .line 668
    add-int v3, p2, v2

    aget-byte v0, p1, v3

    .line 670
    .local v0, "b":B
    :try_start_7
    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->process(B)V

    .line 671
    iget v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mProcessedCharCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mProcessedCharCount:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_13

    .line 667
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 672
    :catch_13
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EmulatorView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while processing character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mProcessedCharCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 678
    .end local v0    # "b":B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_41
    return-void
.end method

.method public clearScrollCounter()V
    .registers 2

    .prologue
    .line 1921
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    .line 1922
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 2006
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    if-eqz v0, :cond_c

    .line 2007
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->finish()V

    .line 2008
    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 2010
    :cond_c
    return-void
.end method

.method public final getCursorCol()I
    .registers 2

    .prologue
    .line 626
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public final getCursorRow()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public final getKeypadApplicationMode()Z
    .registers 2

    .prologue
    .line 638
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mbKeypadApplicationMode:Z

    return v0
.end method

.method public final getMouseTrackingMode()I
    .registers 2

    .prologue
    .line 647
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMouseTrackingMode:I

    return v0
.end method

.method public final getReverseVideo()Z
    .registers 2

    .prologue
    .line 630
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    return-object v0
.end method

.method public getScrollCounter()I
    .registers 2

    .prologue
    .line 1917
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .registers 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 2002
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getShowCursor()Z
    .registers 3

    .prologue
    .line 634
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getUTF8Mode()Z
    .registers 2

    .prologue
    .line 1985
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    return v0
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1928
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 1929
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 1930
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mArgIndex:I

    .line 1931
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mContinueSequence:Z

    .line 1932
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mEscapeState:I

    .line 1933
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedCursorRow:I

    .line 1934
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedCursorCol:I

    .line 1935
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedEffect:I

    .line 1936
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedDecFlags_DECSC_DECRC:I

    .line 1937
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    .line 1939
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    .line 1941
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDecFlags:I

    .line 1942
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mSavedDecFlags:I

    .line 1943
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mInsertMode:Z

    .line 1944
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    .line 1945
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 1946
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1947
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mForeColor:I

    .line 1948
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBackColor:I

    .line 1949
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mbKeypadApplicationMode:Z

    .line 1950
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAlternateCharSet:Z

    .line 1951
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCharSet:[I

    aput v3, v0, v2

    .line 1952
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCharSet:[I

    const/4 v1, 0x2

    aput v1, v0, v3

    .line 1953
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->computeEffectiveCharSet()V

    .line 1955
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setDefaultTabStops()V

    .line 1956
    iget v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    invoke-direct {p0, v2, v2, v0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->blockClear(IIII)V

    .line 1958
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultUTF8Mode:Z

    invoke-virtual {p0, v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setUTF8Mode(Z)V

    .line 1959
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    .line 1960
    iput v2, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 1961
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1962
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mInputCharBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1963
    return-void
.end method

.method public setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 3
    .param p1, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    .line 1993
    const/16 v0, 0x100

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultForeColor:I

    .line 1994
    const/16 v0, 0x101

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultBackColor:I

    .line 1995
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMainBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 1996
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    if-eqz v0, :cond_16

    .line 1997
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 1999
    :cond_16
    return-void
.end method

.method public setDefaultUTF8Mode(Z)V
    .registers 3
    .param p1, "defaultToUTF8Mode"    # Z

    .prologue
    .line 1966
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mDefaultUTF8Mode:Z

    .line 1967
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8EscapeUsed:Z

    if-nez v0, :cond_9

    .line 1968
    invoke-virtual {p0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setUTF8Mode(Z)V

    .line 1970
    :cond_9
    return-void
.end method

.method public setKeyListener(Ljackpal/androidterm/emulatorview/TermKeyListener;)V
    .registers 2
    .param p1, "l"    # Ljackpal/androidterm/emulatorview/TermKeyListener;

    .prologue
    .line 38
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    .line 39
    return-void
.end method

.method public setUTF8Mode(Z)V
    .registers 3
    .param p1, "utf8Mode"    # Z

    .prologue
    .line 1973
    if-eqz p1, :cond_13

    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    if-nez v0, :cond_13

    .line 1974
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ToFollow:I

    .line 1975
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1976
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mInputCharBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1978
    :cond_13
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8Mode:Z

    .line 1979
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    if-eqz v0, :cond_1e

    .line 1980
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    .line 1982
    :cond_1e
    return-void
.end method

.method public setUTF8ModeUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 2
    .param p1, "utf8ModeNotify"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 1989
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mUTF8ModeNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 1990
    return-void
.end method

.method public updateSize(II)V
    .registers 36
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    move/from16 v0, p2

    if-ne v5, v0, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move/from16 v0, p1

    if-ne v5, v0, :cond_11

    .line 609
    :cond_10
    :goto_10
    return-void

    .line 440
    :cond_11
    if-gtz p1, :cond_2e

    .line 441
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rows:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 444
    :cond_2e
    if-gtz p2, :cond_4b

    .line 445
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rows:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 448
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 450
    .local v3, "screen":Ljackpal/androidterm/emulatorview/TranscriptScreen;
    move-object/from16 v0, p0

    iget-object v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMainBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    if-eq v3, v5, :cond_18f

    .line 451
    move-object/from16 v0, p0

    iget-object v11, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mMainBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 457
    .local v11, "altScreen":Ljackpal/androidterm/emulatorview/TranscriptScreen;
    :goto_59
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v18, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    aput v6, v18, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    aput v6, v18, v5

    .line 458
    .local v18, "cursor":[I
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->fastResize(II[I)Z

    move-result v21

    .line 460
    .local v21, "fastResize":Z
    const/4 v4, 0x0

    .line 461
    .local v4, "cursorColor":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    const/4 v15, 0x0

    .line 462
    .local v15, "charAtCursor":Ljava/lang/String;
    const/16 v17, 0x0

    .line 463
    .local v17, "colors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    const/16 v31, 0x0

    .line 464
    .local v31, "transcriptText":Ljava/lang/String;
    if-nez v21, :cond_c0

    .line 469
    new-instance v4, Ljackpal/androidterm/emulatorview/GrowableIntArray;

    .end local v4    # "cursorColor":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljackpal/androidterm/emulatorview/GrowableIntArray;-><init>(I)V

    .line 470
    .restart local v4    # "cursorColor":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move-object/from16 v0, p0

    iget v7, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v8, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    invoke-virtual/range {v3 .. v8}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getSelectedText(Ljackpal/androidterm/emulatorview/GrowableIntArray;IIII)Ljava/lang/String;

    move-result-object v15

    .line 471
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    const/16 v7, 0x1b

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->set(IIII)V

    .line 473
    new-instance v17, Ljackpal/androidterm/emulatorview/GrowableIntArray;

    .end local v17    # "colors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    const/16 v5, 0x400

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljackpal/androidterm/emulatorview/GrowableIntArray;-><init>(I)V

    .line 474
    .restart local v17    # "colors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getTranscriptText(Ljackpal/androidterm/emulatorview/GrowableIntArray;)Ljava/lang/String;

    move-result-object v31

    .line 475
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getStyle()I

    move-result v5

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->resize(III)V

    .line 478
    :cond_c0
    const/4 v10, 0x1

    .line 479
    .local v10, "altFastResize":Z
    const/4 v9, 0x0

    .line 480
    .local v9, "altColors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    const/4 v12, 0x0

    .line 481
    .local v12, "altTranscriptText":Ljava/lang/String;
    if-eqz v11, :cond_e6

    .line 482
    const/4 v5, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->fastResize(II[I)Z

    move-result v10

    .line 484
    if-nez v10, :cond_e6

    .line 485
    new-instance v9, Ljackpal/androidterm/emulatorview/GrowableIntArray;

    .end local v9    # "altColors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    const/16 v5, 0x400

    invoke-direct {v9, v5}, Ljackpal/androidterm/emulatorview/GrowableIntArray;-><init>(I)V

    .line 486
    .restart local v9    # "altColors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    invoke-virtual {v11, v9}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getTranscriptText(Ljackpal/androidterm/emulatorview/GrowableIntArray;)Ljava/lang/String;

    move-result-object v12

    .line 487
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getStyle()I

    move-result v5

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->resize(III)V

    .line 491
    :cond_e6
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    move/from16 v0, p2

    if-eq v5, v0, :cond_101

    .line 492
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    .line 493
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTopMargin:I

    .line 494
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mRows:I

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mBottomMargin:I

    .line 496
    :cond_101
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move/from16 v0, p1

    if-eq v5, v0, :cond_13a

    .line 497
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    move/from16 v26, v0

    .line 498
    .local v26, "oldColumns":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    move-object/from16 v27, v0

    .line 500
    .local v27, "oldTabStop":[Z
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mColumns:I

    new-array v5, v5, [Z

    move-object/from16 v0, p0

    iput-object v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    .line 501
    move/from16 v0, v26

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 502
    .local v30, "toTransfer":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mTabStop:[Z

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-static {v0, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    .end local v26    # "oldColumns":I
    .end local v27    # "oldTabStop":[Z
    .end local v30    # "toTransfer":I
    :cond_13a
    if-nez v10, :cond_1b5

    .line 506
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    move/from16 v32, v0

    .line 509
    .local v32, "wasAboutToAutoWrap":Z
    move-object/from16 v0, p0

    iput-object v11, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 510
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 511
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 512
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 514
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v20, v5, -0x1

    .line 520
    .local v20, "end":I
    const/16 v16, 0x0

    .line 521
    .local v16, "colorOffset":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_15f
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_1ab

    .line 522
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 523
    .local v13, "c":C
    sub-int v5, v22, v16

    invoke-virtual {v9, v5}, Ljackpal/androidterm/emulatorview/GrowableIntArray;->at(I)I

    move-result v29

    .line 524
    .local v29, "style":I
    invoke-static {v13}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_195

    .line 525
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 526
    .local v14, "cLow":C
    invoke-static {v13, v14}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v5, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(II)V

    .line 527
    add-int/lit8 v16, v16, 0x1

    .line 521
    .end local v14    # "cLow":C
    :goto_18c
    add-int/lit8 v22, v22, 0x1

    goto :goto_15f

    .line 453
    .end local v4    # "cursorColor":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    .end local v9    # "altColors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    .end local v10    # "altFastResize":Z
    .end local v11    # "altScreen":Ljackpal/androidterm/emulatorview/TranscriptScreen;
    .end local v12    # "altTranscriptText":Ljava/lang/String;
    .end local v13    # "c":C
    .end local v15    # "charAtCursor":Ljava/lang/String;
    .end local v16    # "colorOffset":I
    .end local v17    # "colors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    .end local v18    # "cursor":[I
    .end local v20    # "end":I
    .end local v21    # "fastResize":Z
    .end local v22    # "i":I
    .end local v29    # "style":I
    .end local v31    # "transcriptText":Ljava/lang/String;
    .end local v32    # "wasAboutToAutoWrap":Z
    :cond_18f
    move-object/from16 v0, p0

    iget-object v11, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAltBuffer:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .restart local v11    # "altScreen":Ljackpal/androidterm/emulatorview/TranscriptScreen;
    goto/16 :goto_59

    .line 528
    .restart local v4    # "cursorColor":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    .restart local v9    # "altColors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    .restart local v10    # "altFastResize":Z
    .restart local v12    # "altTranscriptText":Ljava/lang/String;
    .restart local v13    # "c":C
    .restart local v15    # "charAtCursor":Ljava/lang/String;
    .restart local v16    # "colorOffset":I
    .restart local v17    # "colors":Ljackpal/androidterm/emulatorview/GrowableIntArray;
    .restart local v18    # "cursor":[I
    .restart local v20    # "end":I
    .restart local v21    # "fastResize":Z
    .restart local v22    # "i":I
    .restart local v29    # "style":I
    .restart local v31    # "transcriptText":Ljava/lang/String;
    .restart local v32    # "wasAboutToAutoWrap":Z
    :cond_195
    const/16 v5, 0xa

    if-ne v13, v5, :cond_1a3

    .line 529
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    .line 530
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_18c

    .line 532
    :cond_1a3
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v13, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(II)V

    goto :goto_18c

    .line 536
    .end local v13    # "c":C
    .end local v29    # "style":I
    :cond_1ab
    move-object/from16 v0, p0

    iput-object v3, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 537
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 540
    .end local v16    # "colorOffset":I
    .end local v20    # "end":I
    .end local v22    # "i":I
    .end local v32    # "wasAboutToAutoWrap":Z
    :cond_1b5
    if-eqz v21, :cond_1dd

    .line 542
    const/4 v5, 0x0

    aget v5, v18, v5

    if-ltz v5, :cond_1d1

    const/4 v5, 0x1

    aget v5, v18, v5

    if-ltz v5, :cond_1d1

    .line 543
    const/4 v5, 0x0

    aget v5, v18, v5

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 544
    const/4 v5, 0x1

    aget v5, v18, v5

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    goto/16 :goto_10

    .line 547
    :cond_1d1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 548
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    goto/16 :goto_10

    .line 554
    :cond_1dd
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 555
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 556
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 558
    const/16 v24, -0x1

    .line 559
    .local v24, "newCursorRow":I
    const/16 v23, -0x1

    .line 560
    .local v23, "newCursorCol":I
    const/16 v25, -0x1

    .line 561
    .local v25, "newCursorTranscriptPos":I
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v20, v5, -0x1

    .line 562
    .restart local v20    # "end":I
    :goto_1f8
    if-ltz v20, :cond_209

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_209

    .line 563
    add-int/lit8 v20, v20, -0x1

    goto :goto_1f8

    .line 566
    :cond_209
    const/16 v16, 0x0

    .line 567
    .restart local v16    # "colorOffset":I
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_20d
    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_28b

    .line 568
    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 569
    .restart local v13    # "c":C
    sub-int v5, v22, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljackpal/androidterm/emulatorview/GrowableIntArray;->at(I)I

    move-result v29

    .line 570
    .restart local v29    # "style":I
    invoke-static {v13}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_243

    .line 571
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 572
    .restart local v14    # "cLow":C
    invoke-static {v13, v14}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v5, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(II)V

    .line 573
    add-int/lit8 v16, v16, 0x1

    .line 567
    .end local v14    # "cLow":C
    :cond_240
    :goto_240
    add-int/lit8 v22, v22, 0x1

    goto :goto_20d

    .line 574
    :cond_243
    const/16 v5, 0xa

    if-ne v13, v5, :cond_251

    .line 575
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setCursorCol(I)V

    .line 576
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->doLinefeed()V

    goto :goto_240

    .line 577
    :cond_251
    const/16 v5, 0x1b

    if-ne v13, v5, :cond_283

    .line 580
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    move/from16 v24, v0

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    move/from16 v23, v0

    .line 582
    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveRows()I

    move-result v25

    .line 583
    if-eqz v15, :cond_240

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_240

    .line 585
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljackpal/androidterm/emulatorview/GrowableIntArray;->at(I)I

    move-result v19

    .line 586
    .local v19, "encodedCursorColor":I
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v6, v7, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit([CIII)V

    goto :goto_240

    .line 589
    .end local v19    # "encodedCursorColor":I
    :cond_283
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v13, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->emit(II)V

    goto :goto_240

    .line 594
    .end local v13    # "c":C
    .end local v29    # "style":I
    :cond_28b
    const/4 v5, -0x1

    move/from16 v0, v24

    if-eq v0, v5, :cond_10

    const/4 v5, -0x1

    move/from16 v0, v23

    if-eq v0, v5, :cond_10

    .line 595
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 596
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    .line 600
    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveRows()I

    move-result v5

    sub-int v28, v5, v25

    .line 601
    .local v28, "scrollCount":I
    if-lez v28, :cond_2bb

    move/from16 v0, v28

    move/from16 v1, v24

    if-gt v0, v1, :cond_2bb

    .line 602
    move-object/from16 v0, p0

    iget v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    sub-int v5, v5, v28

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    goto/16 :goto_10

    .line 603
    :cond_2bb
    move/from16 v0, v28

    move/from16 v1, v24

    if-le v0, v1, :cond_10

    .line 605
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorRow:I

    .line 606
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_10
.end method
