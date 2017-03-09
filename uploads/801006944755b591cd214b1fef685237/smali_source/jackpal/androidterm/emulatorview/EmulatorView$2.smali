.class Ljackpal/androidterm/emulatorview/EmulatorView$2;
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
    .line 207
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 209
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$300(Ljackpal/androidterm/emulatorview/EmulatorView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 228
    :cond_c
    :goto_c
    return-void

    .line 213
    :cond_d
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->isMouseTrackingActive()Z

    move-result v2

    if-nez v2, :cond_c

    .line 217
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$300(Ljackpal/androidterm/emulatorview/EmulatorView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 218
    .local v0, "more":Z
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$300(Ljackpal/androidterm/emulatorview/EmulatorView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 219
    .local v1, "newTopRow":I
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # getter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I
    invoke-static {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$400(Ljackpal/androidterm/emulatorview/EmulatorView;)I

    move-result v2

    if-eq v1, v2, :cond_3b

    .line 220
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    # setter for: Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I
    invoke-static {v2, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->access$402(Ljackpal/androidterm/emulatorview/EmulatorView;I)I

    .line 221
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 224
    :cond_3b
    if-eqz v0, :cond_c

    .line 225
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView$2;->this$0:Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v2, p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method
