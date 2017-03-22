.class Lhecticman/jsterm/TermViewFlipper$1;
.super Ljava/lang/Object;
.source "TermViewFlipper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhecticman/jsterm/TermViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhecticman/jsterm/TermViewFlipper;


# direct methods
.method constructor <init>(Lhecticman/jsterm/TermViewFlipper;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lhecticman/jsterm/TermViewFlipper$1;->this$0:Lhecticman/jsterm/TermViewFlipper;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 61
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper$1;->this$0:Lhecticman/jsterm/TermViewFlipper;

    # invokes: Lhecticman/jsterm/TermViewFlipper;->adjustChildSize()V
    invoke-static {v0}, Lhecticman/jsterm/TermViewFlipper;->access$0(Lhecticman/jsterm/TermViewFlipper;)V

    .line 62
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper$1;->this$0:Lhecticman/jsterm/TermViewFlipper;

    # getter for: Lhecticman/jsterm/TermViewFlipper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lhecticman/jsterm/TermViewFlipper;->access$1(Lhecticman/jsterm/TermViewFlipper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method
