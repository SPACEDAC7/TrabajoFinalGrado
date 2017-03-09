.class public abstract Lcom/buzzfeed/android/vcr/view/BaseControllerView;
.super Landroid/widget/FrameLayout;
.source "BaseControllerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;

.field protected mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    .line 35
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->initialize()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    .line 44
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->initialize()V

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract getProgressPollInterval()J
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x32L
        to = 0x3e8L
    .end annotation
.end method

.method public abstract hide()V
.end method

.method protected initialize()V
    .registers 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->getProgressPollInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/toolkit/util/Repeater;->setRepeatDelay(J)V

    .line 49
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 58
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    new-instance v1, Lcom/buzzfeed/android/vcr/view/BaseControllerView$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView$1;-><init>(Lcom/buzzfeed/android/vcr/view/BaseControllerView;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/util/Repeater;->setRepeatListener(Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;)V

    .line 64
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->stopProgressUpdates()V

    .line 69
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/util/Repeater;->setRepeatListener(Lcom/buzzfeed/toolkit/util/Repeater$RepeatListener;)V

    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 71
    return-void
.end method

.method protected abstract onProgressPolled()V
.end method

.method protected performPauseResumeAction()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_1a

    .line 97
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 98
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 99
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mClickListener:Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;

    if-eqz v0, :cond_1a

    .line 100
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mClickListener:Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;

    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;->onPauseClicked()V

    .line 109
    :cond_1a
    :goto_1a
    return-void

    .line 103
    :cond_1b
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 104
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mClickListener:Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;

    if-eqz v0, :cond_1a

    .line 105
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mClickListener:Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;

    invoke-interface {v0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;->onPlayClicked()V

    goto :goto_1a
.end method

.method public setClickListener(Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mClickListener:Lcom/buzzfeed/android/vcr/view/BaseControllerView$ClickListener;

    .line 53
    return-void
.end method

.method public setPlayerControl(Landroid/widget/MediaController$MediaPlayerControl;)V
    .registers 2
    .param p1, "playerControl"    # Landroid/widget/MediaController$MediaPlayerControl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    .line 118
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->startProgressUpdates()V

    .line 119
    return-void
.end method

.method public abstract show()V
.end method

.method public startProgressUpdates()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->isRunning()Z

    move-result v0

    if-nez v0, :cond_10

    .line 78
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->start()V

    .line 79
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->onProgressPolled()V

    .line 81
    :cond_10
    return-void
.end method

.method public stopProgressUpdates()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 88
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->mProgressUpdater:Lcom/buzzfeed/toolkit/util/Repeater;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/Repeater;->stop()V

    .line 90
    :cond_d
    return-void
.end method
