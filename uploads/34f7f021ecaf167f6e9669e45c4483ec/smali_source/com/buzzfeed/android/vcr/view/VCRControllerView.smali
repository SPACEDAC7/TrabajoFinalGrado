.class public Lcom/buzzfeed/android/vcr/view/VCRControllerView;
.super Lcom/buzzfeed/android/vcr/view/BaseControllerView;
.source "VCRControllerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;
    }
.end annotation


# static fields
.field private static final CONTROL_AUTO_HIDE_DELAY:J = 0xbb8L

.field private static final CONTROL_VISIBILITY_ANIMATION_DURATION:J = 0x1f4L

.field private static final DEFAULT_POLL_INTERVAL:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnchorView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentTime:Landroid/widget/TextView;

.field private mEndTime:Landroid/widget/TextView;

.field private mIsDragging:Z

.field private mIsFromXml:Z

.field private mIsPausedForSeek:Z

.field private mIsShowing:Z

.field private mPlayPauseButton:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVisibilityHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsShowing:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mVisibilityHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsShowing:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mVisibilityHandler:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsFromXml:Z

    .line 77
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->makeControllerView()V

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->onPlayPauseClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->animateVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/android/vcr/view/VCRControllerView;II)V
    .registers 3
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->updateCounters(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsPausedForSeek:Z

    return v0
.end method

.method static synthetic access$502(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsPausedForSeek:Z

    return p1
.end method

.method static synthetic access$600(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/vcr/view/VCRControllerView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->cancelHide()V

    return-void
.end method

.method private animateVisibility(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 171
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsShowing:Z

    if-eq v0, p1, :cond_d

    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->isDetachedFromAnchor()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 192
    :cond_d
    :goto_d
    return-void

    .line 175
    :cond_e
    if-eqz p1, :cond_3d

    move v0, v1

    :goto_11
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->setAlpha(F)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->setVisibility(I)V

    .line 178
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    if-eqz p1, :cond_3f

    .line 179
    :goto_1e
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 180
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 181
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->withLayer()Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 185
    if-eqz p1, :cond_41

    .line 186
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->startProgressUpdates()V

    .line 191
    :goto_3a
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsShowing:Z

    goto :goto_d

    :cond_3d
    move v0, v2

    .line 175
    goto :goto_11

    :cond_3f
    move v2, v1

    .line 178
    goto :goto_1e

    .line 188
    :cond_41
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->stopProgressUpdates()V

    goto :goto_3a
.end method

.method private attachToAnchorView()V
    .registers 5

    .prologue
    .line 330
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mAnchorView:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    .line 341
    :goto_4
    return-void

    .line 334
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 339
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->setVisibility(I)V

    .line 340
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mAnchorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private cancelHide()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mVisibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method private configureDrawables()V
    .registers 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/android/vcr/R$drawable;->ic_player_knob:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    .local v0, "knob":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/android/vcr/R$color;->buzzfeed_dark_pink:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 109
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void
.end method

.method private configureListeners()V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/vcr/view/VCRControllerView$InternalSeekChangeListener;-><init>(Lcom/buzzfeed/android/vcr/view/VCRControllerView;Lcom/buzzfeed/android/vcr/view/VCRControllerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayPauseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/buzzfeed/android/vcr/view/VCRControllerView$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView$1;-><init>(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method private isDetachedFromAnchor()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsFromXml:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mAnchorView:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private makeControllerView()V
    .registers 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/android/vcr/R$layout;->video_view_controller:I

    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsFromXml:Z

    if-eqz v0, :cond_4f

    move-object v0, p0

    :goto_b
    invoke-static {v1, v2, v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mRootView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mRootView:Landroid/view/View;

    sget v1, Lcom/buzzfeed/android/vcr/R$id;->video_view_controller_progress:I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mSeekBar:Landroid/widget/SeekBar;

    .line 84
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mRootView:Landroid/view/View;

    sget v1, Lcom/buzzfeed/android/vcr/R$id;->video_view_controller_remaining_time:I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mEndTime:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mRootView:Landroid/view/View;

    sget v1, Lcom/buzzfeed/android/vcr/R$id;->video_view_controller_elapsed_time:I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mCurrentTime:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mRootView:Landroid/view/View;

    sget v1, Lcom/buzzfeed/android/vcr/R$id;->video_view_controller_play_pause:I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayPauseButton:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 90
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->configureListeners()V

    .line 91
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->configureDrawables()V

    .line 92
    return-void

    .line 81
    :cond_4f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private maybeDetachFromAnchorView()V
    .registers 4

    .prologue
    .line 313
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mAnchorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_f

    .line 315
    :try_start_4
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mAnchorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_10

    .line 320
    :goto_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsShowing:Z

    .line 321
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->stopProgressUpdates()V

    .line 323
    :cond_f
    return-void

    .line 316
    :catch_10
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->TAG:Ljava/lang/String;

    const-string v2, "Controls already removed from anchor."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private onPlayPauseClicked()V
    .registers 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->show()V

    .line 210
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->performPauseResumeAction()V

    .line 211
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->startProgressUpdates()V

    .line 212
    return-void
.end method

.method private updateCounters(II)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mCurrentTime:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/DurationFormatUtils;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mEndTime:Landroid/widget/TextView;

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

    .line 246
    return-void
.end method

.method private updatePlayPauseDrawables()V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_9

    .line 270
    :cond_8
    :goto_8
    return-void

    .line 265
    :cond_9
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 266
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/buzzfeed/android/vcr/R$drawable;->ic_player_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 268
    :cond_19
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayPauseButton:Landroid/widget/ImageView;

    sget v1, Lcom/buzzfeed/android/vcr/R$drawable;->ic_player_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8
.end method

.method private updateProgressPosition(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 234
    if-lez p2, :cond_b

    .line 235
    mul-int/lit16 v1, p1, 0x3e8

    div-int v0, v1, p2

    .line 236
    .local v0, "updatedProgress":I
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 238
    .end local v0    # "updatedProgress":I
    :cond_b
    return-void
.end method


# virtual methods
.method protected getProgressPollInterval()J
    .registers 3

    .prologue
    .line 274
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->hideDelayed(J)V

    .line 150
    return-void
.end method

.method public hideDelayed(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->cancelHide()V

    .line 159
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mVisibilityHandler:Landroid/os/Handler;

    new-instance v1, Lcom/buzzfeed/android/vcr/view/VCRControllerView$2;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView$2;-><init>(Lcom/buzzfeed/android/vcr/view/VCRControllerView;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsShowing:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->cancelHide()V

    .line 115
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->clearAnimation()V

    .line 116
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->onDetachedFromWindow()V

    .line 117
    return-void
.end method

.method protected onProgressPolled()V
    .registers 6

    .prologue
    .line 216
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mRootView:Landroid/view/View;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsDragging:Z

    if-eqz v3, :cond_d

    .line 228
    :cond_c
    :goto_c
    return-void

    .line 220
    :cond_d
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v2

    .line 221
    .local v2, "position":I
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    .line 222
    .local v1, "duration":I
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v0

    .line 224
    .local v0, "bufferPercentage":I
    iget-object v3, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v4, v0, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 226
    invoke-direct {p0, v2, v1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->updateProgressPosition(II)V

    .line 227
    invoke-direct {p0, v2, v1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->updateCounters(II)V

    goto :goto_c
.end method

.method public setAnchorView(Landroid/view/ViewGroup;)V
    .registers 5
    .param p1, "view"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 283
    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mIsFromXml:Z

    if-eqz v1, :cond_d

    .line 284
    sget-object v1, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set anchor. View was inflated from XML."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_c
    :goto_c
    return-void

    .line 288
    :cond_d
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mAnchorView:Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 292
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->clearAnimation()V

    .line 293
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->maybeDetachFromAnchorView()V

    .line 295
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mAnchorView:Landroid/view/ViewGroup;

    .line 297
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mAnchorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 298
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 302
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->removeAllViews()V

    .line 303
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->makeControllerView()V

    .line 304
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->attachToAnchorView()V

    goto :goto_c
.end method

.method public show()V
    .registers 3

    .prologue
    .line 124
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->show(J)V

    .line 125
    return-void
.end method

.method public show(J)V
    .registers 6
    .param p1, "timeout"    # J

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->animateVisibility(Z)V

    .line 137
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->hideDelayed(J)V

    .line 142
    :goto_d
    return-void

    .line 140
    :cond_e
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->cancelHide()V

    goto :goto_d
.end method

.method public startProgressUpdates()V
    .registers 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->startProgressUpdates()V

    .line 251
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->updatePlayPauseDrawables()V

    .line 252
    return-void
.end method

.method public stopProgressUpdates()V
    .registers 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/view/BaseControllerView;->stopProgressUpdates()V

    .line 257
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/VCRControllerView;->updatePlayPauseDrawables()V

    .line 258
    return-void
.end method
