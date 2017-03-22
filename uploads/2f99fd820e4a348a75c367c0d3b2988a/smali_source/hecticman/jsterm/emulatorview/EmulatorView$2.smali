.class Lhecticman/jsterm/emulatorview/EmulatorView$2;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Lhecticman/jsterm/emulatorview/UpdateCallback;


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
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 4

    .prologue
    .line 217
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$4(Lhecticman/jsterm/emulatorview/EmulatorView;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 218
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$5(Lhecticman/jsterm/emulatorview/EmulatorView;)Lhecticman/jsterm/emulatorview/TerminalEmulator;

    move-result-object v1

    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getScrollCounter()I

    move-result v0

    .line 219
    .local v0, "rowShift":I
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$6(Lhecticman/jsterm/emulatorview/EmulatorView;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$7(Lhecticman/jsterm/emulatorview/EmulatorView;I)V

    .line 220
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$8(Lhecticman/jsterm/emulatorview/EmulatorView;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$9(Lhecticman/jsterm/emulatorview/EmulatorView;I)V

    .line 221
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$10(Lhecticman/jsterm/emulatorview/EmulatorView;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$11(Lhecticman/jsterm/emulatorview/EmulatorView;I)V

    .line 223
    .end local v0    # "rowShift":I
    :cond_30
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # getter for: Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$5(Lhecticman/jsterm/emulatorview/EmulatorView;)Lhecticman/jsterm/emulatorview/TerminalEmulator;

    move-result-object v1

    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->clearScrollCounter()V

    .line 224
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    # invokes: Lhecticman/jsterm/emulatorview/EmulatorView;->ensureCursorVisible()V
    invoke-static {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->access$12(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    .line 225
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView$2;->this$0:Lhecticman/jsterm/emulatorview/EmulatorView;

    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 226
    return-void
.end method
