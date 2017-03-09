.class Ljackpal/androidterm/ShellTermSession$1;
.super Landroid/os/Handler;
.source "ShellTermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/ShellTermSession;
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
    .line 41
    iput-object p1, p0, Ljackpal/androidterm/ShellTermSession$1;->this$0:Ljackpal/androidterm/ShellTermSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget-object v0, p0, Ljackpal/androidterm/ShellTermSession$1;->this$0:Ljackpal/androidterm/ShellTermSession;

    invoke-virtual {v0}, Ljackpal/androidterm/ShellTermSession;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 50
    :cond_8
    :goto_8
    return-void

    .line 47
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 48
    iget-object v1, p0, Ljackpal/androidterm/ShellTermSession$1;->this$0:Ljackpal/androidterm/ShellTermSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Ljackpal/androidterm/ShellTermSession;->onProcessExit(I)V
    invoke-static {v1, v0}, Ljackpal/androidterm/ShellTermSession;->access$000(Ljackpal/androidterm/ShellTermSession;I)V

    goto :goto_8
.end method
