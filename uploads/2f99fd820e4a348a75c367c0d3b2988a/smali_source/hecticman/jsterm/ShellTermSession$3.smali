.class Lhecticman/jsterm/ShellTermSession$3;
.super Ljava/lang/Thread;
.source "ShellTermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhecticman/jsterm/ShellTermSession;-><init>(Lhecticman/jsterm/util/TermSettings;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/ShellTermSession;


# direct methods
.method constructor <init>(Lhecticman/jsterm/ShellTermSession;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/ShellTermSession$3;->this$0:Lhecticman/jsterm/ShellTermSession;

    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 92
    const-string v1, "Term"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "waiting for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhecticman/jsterm/ShellTermSession$3;->this$0:Lhecticman/jsterm/ShellTermSession;

    # getter for: Lhecticman/jsterm/ShellTermSession;->mProcId:I
    invoke-static {v3}, Lhecticman/jsterm/ShellTermSession;->access$2(Lhecticman/jsterm/ShellTermSession;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lhecticman/jsterm/ShellTermSession$3;->this$0:Lhecticman/jsterm/ShellTermSession;

    # getter for: Lhecticman/jsterm/ShellTermSession;->mProcId:I
    invoke-static {v1}, Lhecticman/jsterm/ShellTermSession;->access$2(Lhecticman/jsterm/ShellTermSession;)I

    move-result v1

    invoke-static {v1}, Lhecticman/jsterm/Exec;->waitFor(I)I

    move-result v0

    .line 94
    .local v0, "result":I
    const-string v1, "Term"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subprocess exited: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lhecticman/jsterm/ShellTermSession$3;->this$0:Lhecticman/jsterm/ShellTermSession;

    # getter for: Lhecticman/jsterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lhecticman/jsterm/ShellTermSession;->access$3(Lhecticman/jsterm/ShellTermSession;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lhecticman/jsterm/ShellTermSession$3;->this$0:Lhecticman/jsterm/ShellTermSession;

    # getter for: Lhecticman/jsterm/ShellTermSession;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lhecticman/jsterm/ShellTermSession;->access$3(Lhecticman/jsterm/ShellTermSession;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    return-void
.end method
