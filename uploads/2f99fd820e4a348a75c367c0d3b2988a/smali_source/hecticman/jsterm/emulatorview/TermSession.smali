.class public Lhecticman/jsterm/emulatorview/TermSession;
.super Ljava/lang/Object;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;
    }
.end annotation


# static fields
.field private static final FINISH:I = 0x3

.field private static final NEW_INPUT:I = 0x1

.field private static final NEW_OUTPUT:I = 0x2

.field private static final TRANSCRIPT_ROWS:I = 0x2710


# instance fields
.field private mByteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

.field private mCmdItems:[Ljava/lang/CharSequence;

.field private mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

.field private mDefaultUTF8Mode:Z

.field private mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

.field private mFinishCallback:Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;

.field private mIsRunning:Z

.field private mMsgHandler:Landroid/os/Handler;

.field private mNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

.field private mReaderThread:Ljava/lang/Thread;

.field private mReceiveBuffer:[B

.field private mTermIn:Ljava/io/InputStream;

.field private mTermOut:Ljava/io/OutputStream;

.field private mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

.field private mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

.field private mWriteByteBuffer:Ljava/nio/ByteBuffer;

.field private mWriteCharBuffer:Ljava/nio/CharBuffer;

.field private mWriteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

.field private mWriterHandler:Landroid/os/Handler;

.field private mWriterThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x1000

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mIsRunning:Z

    .line 108
    new-instance v0, Lhecticman/jsterm/emulatorview/TermSession$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/TermSession$1;-><init>(Lhecticman/jsterm/emulatorview/TermSession;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;

    .line 121
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriteCharBuffer:Ljava/nio/CharBuffer;

    .line 122
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriteByteBuffer:Ljava/nio/ByteBuffer;

    .line 123
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    .line 124
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 125
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 127
    new-array v0, v2, [B

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mReceiveBuffer:[B

    .line 128
    new-instance v0, Lhecticman/jsterm/emulatorview/ByteQueue;

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mByteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

    .line 129
    new-instance v0, Lhecticman/jsterm/emulatorview/TermSession$2;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/TermSession$2;-><init>(Lhecticman/jsterm/emulatorview/TermSession;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    .line 150
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    const-string v1, "TermSession input reader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lhecticman/jsterm/emulatorview/ByteQueue;

    invoke-direct {v0, v2}, Lhecticman/jsterm/emulatorview/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

    .line 153
    new-instance v0, Lhecticman/jsterm/emulatorview/TermSession$3;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/TermSession$3;-><init>(Lhecticman/jsterm/emulatorview/TermSession;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    .line 201
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    const-string v1, "TermSession output writer"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method static synthetic access$0(Lhecticman/jsterm/emulatorview/TermSession;)Z
    .registers 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$1(Lhecticman/jsterm/emulatorview/TermSession;)V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TermSession;->readFromProcess()V

    return-void
.end method

.method static synthetic access$2(Lhecticman/jsterm/emulatorview/TermSession;)Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$3(Lhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/emulatorview/ByteQueue;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mByteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

    return-object v0
.end method

.method static synthetic access$4(Lhecticman/jsterm/emulatorview/TermSession;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lhecticman/jsterm/emulatorview/TermSession;Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$6(Lhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/emulatorview/ByteQueue;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

    return-object v0
.end method

.method static synthetic access$7(Lhecticman/jsterm/emulatorview/TermSession;)Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private notifyNewOutput()V
    .registers 3

    .prologue
    .line 294
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    .line 295
    .local v0, "writerHandler":Landroid/os/Handler;
    if-nez v0, :cond_5

    .line 300
    :goto_4
    return-void

    .line 299
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private readFromProcess()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 408
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/TermSession;->mByteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

    invoke-virtual {v4}, Lhecticman/jsterm/emulatorview/ByteQueue;->getBytesAvailable()I

    move-result v0

    .line 409
    .local v0, "bytesAvailable":I
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/TermSession;->mReceiveBuffer:[B

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 410
    .local v2, "bytesToRead":I
    const/4 v1, 0x0

    .line 412
    .local v1, "bytesRead":I
    :try_start_f
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/TermSession;->mByteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/TermSession;->mReceiveBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Lhecticman/jsterm/emulatorview/ByteQueue;->read([BII)I
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_17} :catch_21

    move-result v1

    .line 418
    iget-object v4, p0, Lhecticman/jsterm/emulatorview/TermSession;->mReceiveBuffer:[B

    invoke-virtual {p0, v4, v7, v1}, Lhecticman/jsterm/emulatorview/TermSession;->processInput([BII)V

    .line 419
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/TermSession;->notifyUpdate()V

    .line 420
    :goto_20
    return-void

    .line 413
    :catch_21
    move-exception v3

    .line 414
    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_20
.end method


# virtual methods
.method protected final appendToEmulator([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2, p3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->append([BII)V

    .line 450
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mIsRunning:Z

    .line 539
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->finish()V

    .line 542
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 544
    :try_start_e
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 545
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_22

    .line 550
    :goto_18
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mFinishCallback:Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;

    if-eqz v0, :cond_21

    .line 551
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mFinishCallback:Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;

    invoke-interface {v0, p0}, Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;->onSessionFinish(Lhecticman/jsterm/emulatorview/TermSession;)V

    .line 553
    :cond_21
    return-void

    .line 546
    :catch_22
    move-exception v0

    goto :goto_18
.end method

.method public getCmdItems()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mCmdItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method getEmulator()Lhecticman/jsterm/emulatorview/TerminalEmulator;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    return-object v0
.end method

.method public getTermIn()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTermOut()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method getTranscriptScreen()Lhecticman/jsterm/emulatorview/TranscriptScreen;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    return-object v0
.end method

.method public getTranscriptText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->getTranscriptText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTF8Mode()Z
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_7

    .line 496
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    .line 498
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getUTF8Mode()Z

    move-result v0

    goto :goto_6
.end method

.method public initializeEmulator(II)V
    .registers 9
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 211
    new-instance v0, Lhecticman/jsterm/emulatorview/TranscriptScreen;

    const/16 v1, 0x2710

    iget-object v2, p0, Lhecticman/jsterm/emulatorview/TermSession;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    invoke-direct {v0, p1, v1, p2, v2}, Lhecticman/jsterm/emulatorview/TranscriptScreen;-><init>(IIILhecticman/jsterm/emulatorview/ColorScheme;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    .line 212
    new-instance v0, Lhecticman/jsterm/emulatorview/TerminalEmulator;

    iget-object v2, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/TermSession;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lhecticman/jsterm/emulatorview/TerminalEmulator;-><init>(Lhecticman/jsterm/emulatorview/TermSession;Lhecticman/jsterm/emulatorview/Screen;IILhecticman/jsterm/emulatorview/ColorScheme;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    .line 213
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    iget-boolean v1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setDefaultUTF8Mode(Z)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mIsRunning:Z

    .line 216
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 218
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 342
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mIsRunning:Z

    return v0
.end method

.method protected notifyUpdate()V
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    if-eqz v0, :cond_9

    .line 369
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    invoke-interface {v0}, Lhecticman/jsterm/emulatorview/UpdateCallback;->onUpdate()V

    .line 371
    :cond_9
    return-void
.end method

.method protected processInput([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2, p3}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->append([BII)V

    .line 437
    return-void
.end method

.method public readCommands()[B
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/ByteQueue;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->reset()V

    .line 519
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/TermSession;->notifyUpdate()V

    .line 520
    return-void
.end method

.method public setCmdItems([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "cmdItems"    # [Ljava/lang/CharSequence;

    .prologue
    .line 560
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mCmdItems:[Ljava/lang/CharSequence;

    .line 561
    return-void
.end method

.method public setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 3
    .param p1, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    .line 459
    if-nez p1, :cond_4

    .line 460
    sget-object p1, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 462
    :cond_4
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 463
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_b

    .line 468
    :goto_a
    return-void

    .line 466
    :cond_b
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V

    .line 467
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0, p1}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V

    goto :goto_a
.end method

.method public setDefaultUTF8Mode(Z)V
    .registers 3
    .param p1, "utf8ByDefault"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    .line 483
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_7

    .line 487
    :goto_6
    return-void

    .line 486
    :cond_7
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setDefaultUTF8Mode(Z)V

    goto :goto_6
.end method

.method public setFinishCallback(Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;)V
    .registers 2
    .param p1, "callback"    # Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;

    .prologue
    .line 529
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mFinishCallback:Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;

    .line 530
    return-void
.end method

.method public setTermIn(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "termIn"    # Ljava/io/InputStream;

    .prologue
    .line 335
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    .line 336
    return-void
.end method

.method public setTermOut(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "termOut"    # Ljava/io/OutputStream;

    .prologue
    .line 317
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    .line 318
    return-void
.end method

.method public setUTF8ModeUpdateCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "utf8ModeNotify"    # Lhecticman/jsterm/emulatorview/UpdateCallback;

    .prologue
    .line 509
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    if-eqz v0, :cond_9

    .line 510
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->setUTF8ModeUpdateCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 512
    :cond_9
    return-void
.end method

.method public setUpdateCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V
    .registers 2
    .param p1, "notify"    # Lhecticman/jsterm/emulatorview/UpdateCallback;

    .prologue
    .line 360
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    .line 361
    return-void
.end method

.method public updateSize(II)V
    .registers 4
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_8

    .line 388
    invoke-virtual {p0, p1, p2}, Lhecticman/jsterm/emulatorview/TermSession;->initializeEmulator(II)V

    .line 392
    :goto_7
    return-void

    .line 390
    :cond_8
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->updateSize(II)V

    goto :goto_7
.end method

.method public write(I)V
    .registers 8
    .param p1, "codePoint"    # I

    .prologue
    const/4 v5, 0x0

    .line 279
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriteCharBuffer:Ljava/nio/CharBuffer;

    .line 280
    .local v1, "charBuf":Ljava/nio/CharBuffer;
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriteByteBuffer:Ljava/nio/ByteBuffer;

    .line 281
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    .line 283
    .local v2, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 284
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 285
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    invoke-static {p1, v3, v5}, Ljava/lang/Character;->toChars(I[CI)I

    .line 286
    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 287
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 288
    invoke-virtual {v2, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 289
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v5, v4}, Lhecticman/jsterm/emulatorview/TermSession;->write([BII)V

    .line 290
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 260
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 261
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lhecticman/jsterm/emulatorview/TermSession;->write([BII)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 264
    .end local v0    # "bytes":[B
    :goto_b
    return-void

    .line 262
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public write([BII)V
    .registers 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 239
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 240
    .local v0, "str":Ljava/lang/String;
    const-string v1, "HECTIC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "write: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TermSession;->mWriteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;

    invoke-virtual {v1, p1, p2, p3}, Lhecticman/jsterm/emulatorview/ByteQueue;->write([BII)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_22} :catch_26

    .line 244
    .end local v0    # "str":Ljava/lang/String;
    :goto_22
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TermSession;->notifyNewOutput()V

    .line 245
    return-void

    .line 242
    :catch_26
    move-exception v1

    goto :goto_22
.end method
