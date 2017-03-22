.class Lhecticman/jsterm/emulatorview/TermSession$3;
.super Ljava/lang/Thread;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/emulatorview/TermSession;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBuffer:[B

.field final synthetic this$0:Lhecticman/jsterm/emulatorview/TermSession;


# direct methods
.method constructor <init>(Lhecticman/jsterm/emulatorview/TermSession;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession$3;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    .line 153
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 154
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession$3;->mBuffer:[B

    return-void
.end method

.method static synthetic access$0(Lhecticman/jsterm/emulatorview/TermSession$3;)V
    .registers 1

    .prologue
    .line 177
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TermSession$3;->writeToOutput()V

    return-void
.end method

.method private writeToOutput()V
    .registers 7

    .prologue
    .line 178
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/TermSession$3;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    # getter for: Lhecticman/jsterm/emulatorview/TermSession;->mWriteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;
    invoke-static {v5}, Lhecticman/jsterm/emulatorview/TermSession;->access$6(Lhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/emulatorview/ByteQueue;

    move-result-object v4

    .line 179
    .local v4, "writeQueue":Lhecticman/jsterm/emulatorview/ByteQueue;
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession$3;->mBuffer:[B

    .line 180
    .local v0, "buffer":[B
    iget-object v5, p0, Lhecticman/jsterm/emulatorview/TermSession$3;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    # getter for: Lhecticman/jsterm/emulatorview/TermSession;->mTermOut:Ljava/io/OutputStream;
    invoke-static {v5}, Lhecticman/jsterm/emulatorview/TermSession;->access$7(Lhecticman/jsterm/emulatorview/TermSession;)Ljava/io/OutputStream;

    move-result-object v3

    .line 182
    .local v3, "termOut":Ljava/io/OutputStream;
    invoke-virtual {v4}, Lhecticman/jsterm/emulatorview/ByteQueue;->getBytesAvailable()I

    move-result v1

    .line 183
    .local v1, "bytesAvailable":I
    array-length v5, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 185
    .local v2, "bytesToWrite":I
    if-nez v2, :cond_1a

    .line 199
    :goto_19
    return-void

    .line 190
    :cond_1a
    const/4 v5, 0x0

    :try_start_1b
    invoke-virtual {v4, v0, v5, v2}, Lhecticman/jsterm/emulatorview/ByteQueue;->read([BII)I

    .line 191
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 192
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_25} :catch_28

    goto :goto_19

    .line 193
    :catch_26
    move-exception v5

    goto :goto_19

    .line 197
    :catch_28
    move-exception v5

    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 160
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession$3;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    new-instance v1, Lhecticman/jsterm/emulatorview/TermSession$3$1;

    invoke-direct {v1, p0}, Lhecticman/jsterm/emulatorview/TermSession$3$1;-><init>(Lhecticman/jsterm/emulatorview/TermSession$3;)V

    invoke-static {v0, v1}, Lhecticman/jsterm/emulatorview/TermSession;->access$5(Lhecticman/jsterm/emulatorview/TermSession;Landroid/os/Handler;)V

    .line 172
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/TermSession$3;->writeToOutput()V

    .line 174
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 175
    return-void
.end method
