.class Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/util/Repeater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/util/Repeater;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/Repeater;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/util/Repeater;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;->this$0:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method performPoll()V
    .registers 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;->this$0:Lcom/buzzfeed/toolkit/util/Repeater;

    # getter for: Lcom/buzzfeed/toolkit/util/Repeater;->mDelayedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->access$300(Lcom/buzzfeed/toolkit/util/Repeater;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;->this$0:Lcom/buzzfeed/toolkit/util/Repeater;

    # getter for: Lcom/buzzfeed/toolkit/util/Repeater;->mRepeatDelay:J
    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/Repeater;->access$200(Lcom/buzzfeed/toolkit/util/Repeater;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;->this$0:Lcom/buzzfeed/toolkit/util/Repeater;

    # getter for: Lcom/buzzfeed/toolkit/util/Repeater;->mListener:Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->access$000(Lcom/buzzfeed/toolkit/util/Repeater;)Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 108
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;->this$0:Lcom/buzzfeed/toolkit/util/Repeater;

    # getter for: Lcom/buzzfeed/toolkit/util/Repeater;->mListener:Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->access$000(Lcom/buzzfeed/toolkit/util/Repeater;)Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;->onRepeat()V

    .line 111
    :cond_11
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;->this$0:Lcom/buzzfeed/toolkit/util/Repeater;

    # getter for: Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z
    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->access$100(Lcom/buzzfeed/toolkit/util/Repeater;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 112
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;->performPoll()V

    .line 114
    :cond_1c
    return-void
.end method
