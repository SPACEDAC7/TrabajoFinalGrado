.class Ljackpal/androidterm/emulatorview/TermSession$1;
.super Landroid/os/Handler;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/emulatorview/TermSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/emulatorview/TermSession;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermSession$1;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$1;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # getter for: Ljackpal/androidterm/emulatorview/TermSession;->mIsRunning:Z
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/TermSession;->access$000(Ljackpal/androidterm/emulatorview/TermSession;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 130
    :cond_8
    :goto_8
    return-void

    .line 120
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 121
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermSession$1;->this$0:Ljackpal/androidterm/emulatorview/TermSession;

    # invokes: Ljackpal/androidterm/emulatorview/TermSession;->readFromProcess()V
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/TermSession;->access$100(Ljackpal/androidterm/emulatorview/TermSession;)V

    goto :goto_8

    .line 122
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljackpal/androidterm/emulatorview/TermSession$1$1;

    invoke-direct {v1, p0}, Ljackpal/androidterm/emulatorview/TermSession$1$1;-><init>(Ljackpal/androidterm/emulatorview/TermSession$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method
