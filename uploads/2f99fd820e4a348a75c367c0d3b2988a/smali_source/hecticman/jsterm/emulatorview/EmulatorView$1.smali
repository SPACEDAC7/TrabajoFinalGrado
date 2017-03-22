.class Lhecticman/jsterm/emulatorview/EmulatorView$1;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/emulatorview/EmulatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/emulatorview/EmulatorView;


# direct methods
.method constructor <init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$1;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 189
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$1;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorBlink:I
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$0(Lhecticman/jsterm/emulatorview/EmulatorView;)I

    move-result v1

    if-eqz v1, :cond_28

    .line 190
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$1;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    iget-object v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView$1;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorVisible:Z
    invoke-static {v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$1(Lhecticman/jsterm/emulatorview/EmulatorView;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x0

    :cond_14
    invoke-static {v1, v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$2(Lhecticman/jsterm/emulatorview/EmulatorView;Z)V

    .line 191
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$1;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$3(Lhecticman/jsterm/emulatorview/EmulatorView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    :goto_22
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView$1;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 197
    return-void

    .line 193
    :cond_28
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$1;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    invoke-static {v1, v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$2(Lhecticman/jsterm/emulatorview/EmulatorView;Z)V

    goto :goto_22
.end method
