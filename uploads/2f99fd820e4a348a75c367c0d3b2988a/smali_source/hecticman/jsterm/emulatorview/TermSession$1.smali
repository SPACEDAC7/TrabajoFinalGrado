.class Lhecticman/jsterm/emulatorview/TermSession$1;
.super Landroid/os/Handler;
.source "TermSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/emulatorview/TermSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/emulatorview/TermSession;


# direct methods
.method constructor <init>(Lhecticman/jsterm/emulatorview/TermSession;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/TermSession$1;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession$1;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    # getter for: Lhecticman/jsterm/emulatorview/TermSession;->mIsRunning:Z
    invoke-static {v0}, Lhecticman/jsterm/emulatorview/TermSession;->access$0(Lhecticman/jsterm/emulatorview/TermSession;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 117
    :cond_8
    :goto_8
    return-void

    .line 114
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 115
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/TermSession$1;->this$0:Lhecticman/jsterm/emulatorview/TermSession;

    # invokes: Lhecticman/jsterm/emulatorview/TermSession;->readFromProcess()V
    invoke-static {v0}, Lhecticman/jsterm/emulatorview/TermSession;->access$1(Lhecticman/jsterm/emulatorview/TermSession;)V

    goto :goto_8
.end method
