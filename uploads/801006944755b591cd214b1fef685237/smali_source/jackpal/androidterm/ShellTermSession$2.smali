.class Ljackpal/androidterm/ShellTermSession$2;
.super Ljava/lang/Thread;
.source "ShellTermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/ShellTermSession;-><init>(Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/ShellTermSession;


# direct methods
.method constructor <init>(Ljackpal/androidterm/ShellTermSession;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Ljackpal/androidterm/ShellTermSession$2;->this$0:Ljackpal/androidterm/ShellTermSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 67
    const-string v1, "Term"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljackpal/androidterm/ShellTermSession$2;->this$0:Ljackpal/androidterm/ShellTermSession;

    # getter for: Ljackpal/androidterm/ShellTermSession;->mProcId:I
    invoke-static {v3}, Ljackpal/androidterm/ShellTermSession;->access$100(Ljackpal/androidterm/ShellTermSession;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Ljackpal/androidterm/ShellTermSession$2;->this$0:Ljackpal/androidterm/ShellTermSession;

    # getter for: Ljackpal/androidterm/ShellTermSession;->mProcId:I
    invoke-static {v1}, Ljackpal/androidterm/ShellTermSession;->access$100(Ljackpal/androidterm/ShellTermSession;)I

    move-result v1

    invoke-static {v1}, Ljackpal/androidterm/TermExec;->waitFor(I)I

    move-result v0

    .line 69
    .local v0, "result":I
    const-string v1, "Term"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subprocess exited: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Ljackpal/androidterm/ShellTermSession$2;->this$0:Ljackpal/androidterm/ShellTermSession;

    # getter for: Ljackpal/androidterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Ljackpal/androidterm/ShellTermSession;->access$200(Ljackpal/androidterm/ShellTermSession;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/ShellTermSession$2;->this$0:Ljackpal/androidterm/ShellTermSession;

    # getter for: Ljackpal/androidterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v2}, Ljackpal/androidterm/ShellTermSession;->access$200(Ljackpal/androidterm/ShellTermSession;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method
