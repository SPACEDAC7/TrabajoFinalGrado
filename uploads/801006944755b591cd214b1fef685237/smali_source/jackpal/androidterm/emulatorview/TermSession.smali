.class public Ljackpal/androidterm/emulatorview/TermSession;
.super Ljava/lang/Object;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x4

.field private static final FINISH:I = 0x3

.field private static final NEW_INPUT:I = 0x1

.field private static final NEW_OUTPUT:I = 0x2

.field private static final TRANSCRIPT_ROWS:I = 0x2710


# instance fields
.field private mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

.field private mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

.field private mDefaultUTF8Mode:Z

.field private mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

.field private mFinishCallback:Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

.field private mIsRunning:Z

.field private mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

.field private mMsgHandler:Landroid/os/Handler;

.field private mNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

.field private mReaderThread:Ljava/lang/Thread;

.field private mReceiveBuffer:[B

.field private mTermIn:Ljava/io/InputStream;

.field private mTermOut:Ljava/io/OutputStream;

.field private mTitle:Ljava/lang/String;

.field private mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

.field private mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

.field private mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

.field private mWriteByteBuffer:Ljava/nio/ByteBuffer;

.field private mWriteCharBuffer:Ljava/nio/CharBuffer;

.field private mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

.field private mWriterHandler:Landroid/os/Handler;

.field private mWriterThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TermSession;-><init>(Z)V

    .line 137
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "exitOnEOF"    # Z

    .prologue
    const/16 v2, 0x1000

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    .line 114
    new-instance v0, Ljackpal/androidterm/emulatorview/TermSession$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermSession$1;-><init>(Ljackpal/androidterm/emulatorview/TermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;

    .line 140
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteCharBuffer:Ljava/nio/CharBuffer;

    .line 141
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteByteBuffer:Ljava/nio/ByteBuffer;

    .line 142
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    .line 143
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 144
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 146
    new-array v0, v2, [B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReceiveBuffer:[B

    .line 147
    new-instance v0, Ljackpal/androidterm/emulatorview/ByteQueue;

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/ByteQueue;-><init>(I)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    .line 148
    new-instance v0, Ljackpal/androidterm/emulatorview/TermSession$2;

    invoke-direct {v0, p0, p1}, Ljackpal/androidterm/emulatorview/TermSession$2;-><init>(Ljackpal/androidterm/emulatorview/TermSession;Z)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    .line 177
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    const-string v1, "TermSession input reader"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljackpal/androidterm/emulatorview/ByteQueue;

    invoke-direct {v0, v2}, Ljackpal/androidterm/emulatorview/ByteQueue;-><init>(I)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    .line 180
    new-instance v0, Ljackpal/androidterm/emulatorview/TermSession$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermSession$3;-><init>(Ljackpal/androidterm/emulatorview/TermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    .line 230
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    const-string v1, "TermSession output writer"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/emulatorview/TermSession;)Z
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 58
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 58
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession;->readFromProcess()V

    return-void
.end method

.method static synthetic access$200(Ljackpal/androidterm/emulatorview/TermSession;)Ljava/io/InputStream;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 58
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/ByteQueue;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 58
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    return-object v0
.end method

.method static synthetic access$400(Ljackpal/androidterm/emulatorview/TermSession;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 58
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Ljackpal/androidterm/emulatorview/TermSession;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 58
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/ByteQueue;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 58
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    return-object v0
.end method

.method static synthetic access$800(Ljackpal/androidterm/emulatorview/TermSession;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 58
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private notifyNewOutput()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    .line 338
    .local v0, "writerHandler":Landroid/os/Handler;
    if-nez v0, :cond_5

    .line 343
    :goto_4
    return-void

    .line 342
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private readFromProcess()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 487
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    invoke-virtual {v4}, Ljackpal/androidterm/emulatorview/ByteQueue;->getBytesAvailable()I

    move-result v0

    .line 488
    .local v0, "bytesAvailable":I
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReceiveBuffer:[B

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 489
    .local v2, "bytesToRead":I
    const/4 v1, 0x0

    .line 491
    .local v1, "bytesRead":I
    :try_start_f
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReceiveBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljackpal/androidterm/emulatorview/ByteQueue;->read([BII)I
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_17} :catch_21

    move-result v1

    .line 497
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReceiveBuffer:[B

    invoke-virtual {p0, v4, v7, v1}, Ljackpal/androidterm/emulatorview/TermSession;->processInput([BII)V

    .line 498
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/TermSession;->notifyUpdate()V

    .line 499
    :goto_20
    return-void

    .line 492
    :catch_21
    move-exception v3

    .line 493
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
    .line 528
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->append([BII)V

    .line 529
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    .line 617
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->finish()V

    .line 618
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    if-eqz v0, :cond_11

    .line 619
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->finish()V

    .line 623
    :cond_11
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 624
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 627
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 628
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_25} :catch_2f

    .line 634
    :goto_25
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mFinishCallback:Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

    if-eqz v0, :cond_2e

    .line 635
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mFinishCallback:Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

    invoke-interface {v0, p0}, Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;->onSessionFinish(Ljackpal/androidterm/emulatorview/TermSession;)V

    .line 637
    :cond_2e
    return-void

    .line 631
    :catch_2f
    move-exception v0

    goto :goto_25

    .line 629
    :catch_31
    move-exception v0

    goto :goto_25
.end method

.method getEmulator()Ljackpal/androidterm/emulatorview/TerminalEmulator;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    return-object v0
.end method

.method public getTermIn()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTermOut()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method getTranscriptScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    return-object v0
.end method

.method public getTranscriptText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getTranscriptText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTF8Mode()Z
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_7

    .line 574
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    .line 576
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getUTF8Mode()Z

    move-result v0

    goto :goto_6
.end method

.method public initializeEmulator(II)V
    .registers 9
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 244
    new-instance v0, Ljackpal/androidterm/emulatorview/TranscriptScreen;

    const/16 v1, 0x2710

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermSession;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    invoke-direct {v0, p1, v1, p2, v2}, Ljackpal/androidterm/emulatorview/TranscriptScreen;-><init>(IIILjackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    .line 245
    new-instance v0, Ljackpal/androidterm/emulatorview/TerminalEmulator;

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTranscriptScreen:Ljackpal/androidterm/emulatorview/TranscriptScreen;

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/TermSession;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljackpal/androidterm/emulatorview/TerminalEmulator;-><init>(Ljackpal/androidterm/emulatorview/TermSession;Ljackpal/androidterm/emulatorview/TranscriptScreen;IILjackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    .line 246
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    iget-boolean v1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setDefaultUTF8Mode(Z)V

    .line 247
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setKeyListener(Ljackpal/androidterm/emulatorview/TermKeyListener;)V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    .line 250
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mReaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 385
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z

    return v0
.end method

.method protected notifyTitleChanged()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 447
    .local v0, "listener":Ljackpal/androidterm/emulatorview/UpdateCallback;
    if-eqz v0, :cond_7

    .line 448
    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    .line 450
    :cond_7
    return-void
.end method

.method protected notifyUpdate()V
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    if-eqz v0, :cond_9

    .line 412
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    .line 414
    :cond_9
    return-void
.end method

.method protected onProcessExit()V
    .registers 1

    .prologue
    .line 234
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/TermSession;->finish()V

    .line 235
    return-void
.end method

.method protected processInput([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 515
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->append([BII)V

    .line 516
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->reset()V

    .line 597
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/TermSession;->notifyUpdate()V

    .line 598
    return-void
.end method

.method public setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 3
    .param p1, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    .line 538
    if-nez p1, :cond_4

    .line 539
    sget-object p1, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 541
    :cond_4
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 542
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_b

    .line 546
    :goto_a
    return-void

    .line 545
    :cond_b
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    goto :goto_a
.end method

.method public setDefaultUTF8Mode(Z)V
    .registers 3
    .param p1, "utf8ByDefault"    # Z

    .prologue
    .line 560
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mDefaultUTF8Mode:Z

    .line 561
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_7

    .line 565
    :goto_6
    return-void

    .line 564
    :cond_7
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setDefaultUTF8Mode(Z)V

    goto :goto_6
.end method

.method public setFinishCallback(Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;)V
    .registers 2
    .param p1, "callback"    # Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

    .prologue
    .line 607
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mFinishCallback:Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;

    .line 608
    return-void
.end method

.method public setKeyListener(Ljackpal/androidterm/emulatorview/TermKeyListener;)V
    .registers 2
    .param p1, "l"    # Ljackpal/androidterm/emulatorview/TermKeyListener;

    .prologue
    .line 60
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    .line 61
    return-void
.end method

.method public setTermIn(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "termIn"    # Ljava/io/InputStream;

    .prologue
    .line 378
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;

    .line 379
    return-void
.end method

.method public setTermOut(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "termOut"    # Ljava/io/OutputStream;

    .prologue
    .line 360
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;

    .line 361
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTitle:Ljava/lang/String;

    .line 428
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/TermSession;->notifyTitleChanged()V

    .line 429
    return-void
.end method

.method public setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 2
    .param p1, "listener"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 438
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 439
    return-void
.end method

.method public setUTF8ModeUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "utf8ModeNotify"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 587
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-eqz v0, :cond_9

    .line 588
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->setUTF8ModeUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 590
    :cond_9
    return-void
.end method

.method public setUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 2
    .param p1, "notify"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 403
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 404
    return-void
.end method

.method public updateSize(II)V
    .registers 4
    .param p1, "columns"    # I
    .param p2, "rows"    # I

    .prologue
    .line 466
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_8

    .line 467
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/emulatorview/TermSession;->initializeEmulator(II)V

    .line 471
    :goto_7
    return-void

    .line 469
    :cond_8
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0, p1, p2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->updateSize(II)V

    goto :goto_7
.end method

.method public write(I)V
    .registers 9
    .param p1, "codePoint"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 314
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteByteBuffer:Ljava/nio/ByteBuffer;

    .line 315
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    const/16 v4, 0x80

    if-ge p1, v4, :cond_13

    .line 317
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 318
    .local v0, "buf":[B
    int-to-byte v4, p1

    aput-byte v4, v0, v6

    .line 319
    invoke-virtual {p0, v0, v6, v5}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    .line 333
    .end local v0    # "buf":[B
    :goto_12
    return-void

    .line 323
    :cond_13
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteCharBuffer:Ljava/nio/CharBuffer;

    .line 324
    .local v2, "charBuf":Ljava/nio/CharBuffer;
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TermSession;->mUTF8Encoder:Ljava/nio/charset/CharsetEncoder;

    .line 326
    .local v3, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 327
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 328
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    invoke-static {p1, v4, v6}, Ljava/lang/Character;->toChars(I[CI)I

    .line 329
    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 330
    invoke-virtual {v3, v2, v1, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 331
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 332
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v6, v5}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    goto :goto_12
.end method

.method public write(Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 295
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 296
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 299
    .end local v0    # "bytes":[B
    :goto_b
    return-void

    .line 297
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public write([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 272
    :goto_0
    if-lez p3, :cond_f

    .line 273
    :try_start_2
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermSession;->mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;

    invoke-virtual {v1, p1, p2, p3}, Ljackpal/androidterm/emulatorview/ByteQueue;->write([BII)I

    move-result v0

    .line 274
    .local v0, "written":I
    add-int/2addr p2, v0

    .line 275
    sub-int/2addr p3, v0

    .line 276
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession;->notifyNewOutput()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_0

    .line 278
    .end local v0    # "written":I
    :catch_e
    move-exception v1

    .line 280
    :cond_f
    return-void
.end method
