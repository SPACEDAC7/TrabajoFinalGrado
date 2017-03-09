.class Ljackpal/androidterm/emulatorview/EmulatorView$3;
.super Ljava/lang/Object;
.source "EmulatorView.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


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
    .line 478
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .prologue
    .line 480
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$800(Ljackpal/androidterm/emulatorview/EmulatorView;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 481
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TerminalEmulator;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScrollCounter()I

    move-result v0

    .line 482
    .local v0, "rowShift":I
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # -= operator for: Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I
    invoke-static {v1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1020(Ljackpal/androidterm/emulatorview/EmulatorView;I)I

    .line 483
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # -= operator for: Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I
    invoke-static {v1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1120(Ljackpal/androidterm/emulatorview/EmulatorView;I)I

    .line 484
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # -= operator for: Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I
    invoke-static {v1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1220(Ljackpal/androidterm/emulatorview/EmulatorView;I)I

    .line 486
    .end local v0    # "rowShift":I
    :cond_21
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TerminalEmulator;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->clearScrollCounter()V

    .line 487
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # invokes: Ljackpal/androidterm/emulatorview/EmulatorView;->ensureCursorVisible()V
    invoke-static {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    .line 488
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$3;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 489
    return-void
.end method
