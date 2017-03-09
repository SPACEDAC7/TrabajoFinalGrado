.class Ljackpal/androidterm/emulatorview/TermSession$2;
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

.field final synthetic val$exitOnEOF:Z


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/TermSession;Z)V
    .registers 4

    .prologue
    .line 148
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    iput-boolean p2, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->val$exitOnEOF:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 149
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 155
    :cond_0
    :try_start_0
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/TermSession;->access$200(Ljackpal/androidterm/emulatorview/TermSession;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->mBuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_4e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_50

    move-result v1

    .line 156
    .local v1, "read":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_28

    .line 174
    .end local v1    # "read":I
    :goto_f
    iget-boolean v3, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->val$exitOnEOF:Z

    if-eqz v3, :cond_27

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/TermSession;->access$400(Ljackpal/androidterm/emulatorview/TermSession;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v4}, Ljackpal/androidterm/emulatorview/TermSession;->access$400(Ljackpal/androidterm/emulatorview/TermSession;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :cond_27
    return-void

    .line 160
    .restart local v1    # "read":I
    :cond_28
    const/4 v0, 0x0

    .line 161
    .local v0, "offset":I
    :goto_29
    if-lez v1, :cond_0

    .line 162
    :try_start_2b
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mByteQueue:Ljackpal/androidterm/emulatorview/ByteQueue;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/TermSession;->access$300(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/ByteQueue;

    move-result-object v3

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->mBuffer:[B

    invoke-virtual {v3, v4, v0, v1}, Ljackpal/androidterm/emulatorview/ByteQueue;->write([BII)I

    move-result v2

    .line 164
    .local v2, "written":I
    add-int/2addr v0, v2

    .line 165
    sub-int/2addr v1, v2

    .line 166
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v3}, Ljackpal/androidterm/emulatorview/TermSession;->access$400(Ljackpal/androidterm/emulatorview/TermSession;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/TermSession$2;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v4}, Ljackpal/androidterm/emulatorview/TermSession;->access$400(Ljackpal/androidterm/emulatorview/TermSession;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4d} :catch_4e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_4d} :catch_50

    goto :goto_29

    .line 170
    .end local v0    # "offset":I
    .end local v1    # "read":I
    .end local v2    # "written":I
    :catch_4e
    move-exception v3

    goto :goto_f

    .line 171
    :catch_50
    move-exception v3

    goto :goto_f
.end method
