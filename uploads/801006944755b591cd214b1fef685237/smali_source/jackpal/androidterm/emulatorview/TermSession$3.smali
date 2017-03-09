.class Ljackpal/androidterm/emulatorview/TermSession$3;
.super Ljava/lang/Thread;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/emulatorview/TermSession;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBuffer:[B

.field final synthetic this$0:Ljackpal/androidterm/emulatorview/TermSession;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 3

    .prologue
    .line 180
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 181
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->mBuffer:[B

    return-void
.end method

.method static synthetic access$600(Ljackpal/androidterm/emulatorview/TermSession$3;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/TermSession$3;

    .prologue
    .line 180
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession$3;->writeToOutput()V

    return-void
.end method

.method private writeToOutput()V
    .registers 8

    .prologue
    .line 205
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mWriteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;
    invoke-static {v6}, Ljackpal/androidterm/emulatorview/TermSession;->access$700(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/ByteQueue;

    move-result-object v5

    .line 206
    .local v5, "writeQueue":Ljackpal/androidterm/emulatorview/ByteQueue;
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->mBuffer:[B

    .line 207
    .local v0, "buffer":[B
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;
    invoke-static {v6}, Ljackpal/androidterm/emulatorview/TermSession;->access$800(Ljackpal/androidterm/emulatorview/TermSession;)Ljava/io/OutputStream;

    move-result-object v4

    .line 209
    .local v4, "termOut":Ljava/io/OutputStream;
    invoke-virtual {v5}, Ljackpal/androidterm/emulatorview/ByteQueue;->getBytesAvailable()I

    move-result v1

    .line 210
    .local v1, "bytesAvailable":I
    array-length v6, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 212
    .local v2, "bytesToWrite":I
    if-nez v2, :cond_1a

    .line 228
    :goto_19
    return-void

    .line 217
    :cond_1a
    const/4 v6, 0x0

    :try_start_1b
    invoke-virtual {v5, v0, v6, v2}, Ljackpal/androidterm/emulatorview/ByteQueue;->read([BII)I

    .line 218
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 219
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_25} :catch_2b

    goto :goto_19

    .line 220
    :catch_26
    move-exception v3

    .line 224
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 225
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2b
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 185
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 187
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$3;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    new-instance v1, Ljackpal/androidterm/emulatorview/TermSession$3$1;

    invoke-direct {v1, p0}, Ljackpal/androidterm/emulatorview/TermSession$3$1;-><init>(Ljackpal/androidterm/emulatorview/TermSession$3;)V

    # setter for: Ljackpal/androidterm/emulatorview/TermSession;->mWriterHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/TermSession;->access$502(Ljackpal/androidterm/emulatorview/TermSession;Landroid/os/Handler;)Landroid/os/Handler;

    .line 199
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermSession$3;->writeToOutput()V

    .line 201
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 202
    return-void
.end method
