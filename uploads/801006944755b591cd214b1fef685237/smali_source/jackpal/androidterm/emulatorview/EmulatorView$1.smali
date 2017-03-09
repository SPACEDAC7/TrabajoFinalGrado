.class Ljackpal/androidterm/emulatorview/EmulatorView$1;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/emulatorview/EmulatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/emulatorview/EmulatorView;


# direct methods
.method constructor <init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$1;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 193
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$1;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$000(Ljackpal/androidterm/emulatorview/EmulatorView;)I

    move-result v1

    if-eqz v1, :cond_29

    .line 194
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$1;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$1;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$100(Ljackpal/androidterm/emulatorview/EmulatorView;)Z

    move-result v2

    if-nez v2, :cond_27

    :goto_13
    # setter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z
    invoke-static {v1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$102(Ljackpal/androidterm/emulatorview/EmulatorView;Z)Z

    .line 195
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$1;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$200(Ljackpal/androidterm/emulatorview/EmulatorView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    :goto_21
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView$1;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 201
    return-void

    .line 194
    :cond_27
    const/4 v0, 0x0

    goto :goto_13

    .line 197
    :cond_29
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$1;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # setter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z
    invoke-static {v1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$102(Ljackpal/androidterm/emulatorview/EmulatorView;Z)Z

    goto :goto_21
.end method
