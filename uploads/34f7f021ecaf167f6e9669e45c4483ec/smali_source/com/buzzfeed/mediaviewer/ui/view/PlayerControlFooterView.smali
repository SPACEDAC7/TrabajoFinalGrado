.class public Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
.super Lcom/buzzfeed/android/vcr/view/BaseControllerView;
.source "PlayerControlFooterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;,
        Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;
    }
.end annotation


# static fields
.field private static final CONTROL_VISIBILITY_ANIMATION_DURATION:J = 0x1f4L

.field private static final DEFAULT_POLL_INTERVAL:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowScrubbing:Z

.field private mCurrentTime:Landroid/widget/TextView;

.field private mEndTime:Landroid/widget/TextView;

.field private mIsDragging:Z

.field private mIsPausedForSeek:Z

.field private mIsPlaying:Z

.field private mIsShowing:Z

.field private mIsUpdating:Z

.field private mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

.field private mPlayPauseButton:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mAllowScrubbing:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mAllowScrubbing:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mAllowScrubbing:Z

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->onPlayPauseClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mAllowScrubbing:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;II)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updateCounters(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$700(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPausedForSeek:Z

    return v0
.end method

.method static synthetic access$902(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPausedForSeek:Z

    return p1
.end method

.method private animateVisibility(Z)Landroid/animation/ObjectAnimator;
    .registers 8
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 225
    if-eqz p1, :cond_20

    .line 226
    invoke-virtual {p0, v4}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setVisibility(I)V

    .line 227
    const/high16 v1, 0x3f800000

    .line 228
    .local v1, "targetAlpha":F
    const/4 v0, 0x0

    .line 234
    .local v0, "startAlpha":F
    :goto_9
    iput-boolean p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsShowing:Z

    .line 236
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    .line 237
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    return-object v2

    .line 230
    .end local v0    # "startAlpha":F
    .end local v1    # "targetAlpha":F
    :cond_20
    const/4 v1, 0x0

    .line 231
    .restart local v1    # "targetAlpha":F
    const/high16 v0, 0x3f800000

    .restart local v0    # "startAlpha":F
    goto :goto_9
.end method

.method private configureDrawables()V
    .registers 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/mediaviewer/R$drawable;->ic_player_knob:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .local v0, "knob":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/mediaviewer/R$color;->buzzfeed_dark_pink:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 149
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 150
    return-void
.end method

.method private configureListeners()V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$InternalSeekChangeListener;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayPauseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$2;

    invoke-direct {v1, p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$2;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method private onPlayPauseClicked()V
    .registers 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->performPauseResumeAction()V

    .line 245
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updatePlayPauseDrawablesIfNeeded()V

    .line 246
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->startProgressUpdates()V

    .line 247
    return-void
.end method

.method private updateCounters(II)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mCurrentTime:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mEndTime:Landroid/widget/TextView;

    const-string v1, "-%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sub-int v4, p2, p1

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->formatMs(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method private updatePlayPauseDrawables()V
    .registers 3

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPlaying:Z

    if-eqz v0, :cond_c

    .line 321
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/buzzfeed/mediaviewer/R$drawable;->ic_player_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    :goto_b
    return-void

    .line 323
    :cond_c
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/buzzfeed/mediaviewer/R$drawable;->ic_player_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b
.end method

.method private updatePlayPauseDrawablesIfNeeded()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    iget-boolean v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPlaying:Z

    if-ne v0, v1, :cond_f

    .line 317
    :cond_e
    :goto_e
    return-void

    .line 315
    :cond_f
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPlaying:Z

    .line 316
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updatePlayPauseDrawables()V

    goto :goto_e
.end method


# virtual methods
.method public animateIn()Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->animateVisibility(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public animateOut()Landroid/animation/ObjectAnimator;
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->animateVisibility(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected getProgressPollInterval()J
    .registers 3

    .prologue
    .line 329
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->animateOut()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 198
    return-void
.end method

.method protected inflateView()V
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/mediaviewer/R$layout;->view_player_controller:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 132
    return-void
.end method

.method protected initialize()V
    .registers 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->initialize()V

    .line 110
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->inflateView()V

    .line 112
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->video_view_controller_progress:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    .line 113
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->video_view_controller_remaining_time:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mEndTime:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->video_view_controller_elapsed_time:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mCurrentTime:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/buzzfeed/mediaviewer/R$id;->video_view_controller_play_pause:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayPauseButton:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 119
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->configureListeners()V

    .line 120
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->configureDrawables()V

    .line 122
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_49

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setAlpha(F)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsShowing:Z

    .line 128
    :goto_48
    return-void

    .line 126
    :cond_49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsShowing:Z

    goto :goto_48
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsShowing:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->clearAnimation()V

    .line 167
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->onDetachedFromWindow()V

    .line 168
    return-void
.end method

.method protected onProgressPolled()V
    .registers 6

    .prologue
    .line 251
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsDragging:Z

    if-eqz v3, :cond_11

    .line 263
    :cond_10
    :goto_10
    return-void

    .line 255
    :cond_11
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v2

    .line 256
    .local v2, "position":I
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    .line 257
    .local v1, "duration":I
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v0

    .line 259
    .local v0, "bufferPercentage":I
    iget-object v3, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v4, v0, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 261
    invoke-virtual {p0, v2, v1}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updateProgressPosition(II)V

    .line 262
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updatePlayPauseDrawablesIfNeeded()V

    goto :goto_10
.end method

.method protected onSetAlpha(I)Z
    .registers 4
    .param p1, "alpha"    # I

    .prologue
    .line 173
    if-eqz p1, :cond_10

    const/4 v0, 0x1

    .line 174
    .local v0, "enabled":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->setEnabled(Z)V

    .line 175
    if-eqz v0, :cond_12

    .line 176
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->startProgressUpdates()V

    .line 181
    :goto_b
    invoke-super {p0, p1}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->onSetAlpha(I)Z

    move-result v1

    return v1

    .line 173
    .end local v0    # "enabled":Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 178
    .restart local v0    # "enabled":Z
    :cond_12
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->stopProgressUpdates()V

    goto :goto_b
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->onWindowVisibilityChanged(I)V

    .line 102
    if-nez p1, :cond_8

    .line 103
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updatePlayPauseDrawablesIfNeeded()V

    .line 105
    :cond_8
    return-void
.end method

.method public setAllowScrubbing(Z)V
    .registers 4
    .param p1, "allowScrubbing"    # Z

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mAllowScrubbing:Z

    if-ne v0, p1, :cond_5

    .line 97
    :goto_4
    return-void

    .line 83
    :cond_5
    iput-boolean p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mAllowScrubbing:Z

    .line 85
    if-eqz p1, :cond_1b

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 87
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    .line 89
    :cond_1b
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$1;-><init>(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 76
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mOnSeekBarChangeListener:Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView$OnSeekBarChangeListener;

    .line 334
    return-void
.end method

.method public setPlayerControl(Landroid/widget/MediaController$MediaPlayerControl;)V
    .registers 3
    .param p1, "playerControl"    # Landroid/widget/MediaController$MediaPlayerControl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->setPlayerControl(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 303
    if-eqz p1, :cond_f

    .line 304
    invoke-interface {p1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPlaying:Z

    .line 308
    :goto_b
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updatePlayPauseDrawables()V

    .line 309
    return-void

    .line 306
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsPlaying:Z

    goto :goto_b
.end method

.method public setProgressDrawable(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->animateIn()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 190
    return-void
.end method

.method public startProgressUpdates()V
    .registers 2

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsUpdating:Z

    if-eqz v0, :cond_5

    .line 290
    :goto_4
    return-void

    .line 287
    :cond_5
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updatePlayPauseDrawablesIfNeeded()V

    .line 288
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->startProgressUpdates()V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsUpdating:Z

    goto :goto_4
.end method

.method public stopProgressUpdates()V
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsUpdating:Z

    if-nez v0, :cond_5

    .line 298
    :goto_4
    return-void

    .line 295
    :cond_5
    invoke-direct {p0}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updatePlayPauseDrawablesIfNeeded()V

    .line 296
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->stopProgressUpdates()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mIsUpdating:Z

    goto :goto_4
.end method

.method public updateProgressPosition(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 269
    if-lez p2, :cond_b

    .line 270
    mul-int/lit16 v1, p1, 0x3e8

    div-int v0, v1, p2

    .line 271
    .local v0, "updatedProgress":I
    iget-object v1, p0, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 273
    .end local v0    # "updatedProgress":I
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/mediaviewer/ui/view/PlayerControlFooterView;->updateCounters(II)V

    .line 274
    return-void
.end method
