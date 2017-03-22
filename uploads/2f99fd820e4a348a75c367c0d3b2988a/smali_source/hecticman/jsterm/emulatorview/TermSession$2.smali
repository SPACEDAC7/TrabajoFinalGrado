.class Lhecticman/jsterm/emulatorview/TermSession$2;
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
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession$2;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    .line 129
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 130
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession$2;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 136
    :goto_0
    :try_start_0
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TermSession$2;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    # getter for: Lhecticman/jsterm/emulatorview/TermSession;->mTermIn:Ljava/io/InputStream;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/TermSession;->access$2(Lhecticman/jsterm/emulatorview/TermSession;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lhecticman/jsterm/emulatorview/TermSession$2;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 137
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 148
    .end local v0    # "read":I
    :goto_f
    return-void

    .line 141
    .restart local v0    # "read":I
    :cond_10
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TermSession$2;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    # getter for: Lhecticman/jsterm/emulatorview/TermSession;->mByteQueue:Lhecticman/jsterm/emulatorview/ByteQueue;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/TermSession;->access$3(Lhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/emulatorview/ByteQueue;

    move-result-object v1

    iget-object v2, p0, Lhecticman/jsterm/emulatorview/TermSession$2;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lhecticman/jsterm/emulatorview/ByteQueue;->write([BII)V

    .line 142
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/TermSession$2;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    # getter for: Lhecticman/jsterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/TermSession;->access$4(Lhecticman/jsterm/emulatorview/TermSession;)Landroid/os/Handler;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/TermSession$2;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    # getter for: Lhecticman/jsterm/emulatorview/TermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lhecticman/jsterm/emulatorview/TermSession;->access$4(Lhecticman/jsterm/emulatorview/TermSession;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_30} :catch_33

    goto :goto_0

    .line 145
    .end local v0    # "read":I
    :catch_31
    move-exception v1

    goto :goto_f

    .line 146
    :catch_33
    move-exception v1

    goto :goto_f
.end method
