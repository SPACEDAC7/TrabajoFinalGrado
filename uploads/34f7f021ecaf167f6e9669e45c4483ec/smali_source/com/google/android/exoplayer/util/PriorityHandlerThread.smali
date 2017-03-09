.class public final Lcom/google/android/exoplayer/util/PriorityHandlerThread;
.super Landroid/os/HandlerThread;
.source "PriorityHandlerThread.java"


# instance fields
.field private final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    iput p2, p0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;->priority:I

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/exoplayer/util/PriorityHandlerThread;->priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 40
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 41
    return-void
.end method
