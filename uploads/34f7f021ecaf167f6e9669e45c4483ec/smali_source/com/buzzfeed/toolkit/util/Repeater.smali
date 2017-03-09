.class public Lcom/buzzfeed/toolkit/util/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;,
        Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;
    }
.end annotation


# static fields
.field static final DEFAULT_REPEAT_DELAY:J = 0x64L


# instance fields
.field private final mDelayedHandler:Landroid/os/Handler;

.field private mListener:Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPollRunnable:Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;

.field private mRepeatDelay:J

.field private mRepeaterRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeatDelay:J

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mDelayedHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;-><init>(Lcom/buzzfeed/toolkit/util/Repeater;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mPollRunnable:Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeatDelay:J

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z

    .line 44
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mDelayedHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;-><init>(Lcom/buzzfeed/toolkit/util/Repeater;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mPollRunnable:Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "pollRunnable"    # Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeatDelay:J

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z

    .line 55
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mDelayedHandler:Landroid/os/Handler;

    .line 56
    iput-object p2, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mPollRunnable:Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/toolkit/util/Repeater;)Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/util/Repeater;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mListener:Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/toolkit/util/Repeater;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/util/Repeater;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/toolkit/util/Repeater;)J
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/util/Repeater;

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeatDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/toolkit/util/Repeater;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/util/Repeater;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mDelayedHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z

    return v0
.end method

.method public setRepeatDelay(J)V
    .registers 4
    .param p1, "milliseconds"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeatDelay:J

    .line 93
    return-void
.end method

.method public setRepeatListener(Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    iput-object p1, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mListener:Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;

    .line 102
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z

    if-nez v0, :cond_c

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z

    .line 65
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mPollRunnable:Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/Repeater$PollRunnable;->performPoll()V

    .line 67
    :cond_c
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mDelayedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/util/Repeater;->mRepeaterRunning:Z

    .line 75
    return-void
.end method
