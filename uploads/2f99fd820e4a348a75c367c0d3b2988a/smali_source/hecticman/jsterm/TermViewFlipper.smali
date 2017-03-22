.class public Lhecticman/jsterm/TermViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "TermViewFlipper.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/TermViewFlipper$ViewFlipperIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ViewFlipper;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREEN_CHECK_PERIOD:I = 0x3e8


# instance fields
.field private callbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lhecticman/jsterm/emulatorview/UpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private mCheckSize:Ljava/lang/Runnable;

.field private mChildParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mCurHeight:I

.field private mCurWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mRedoLayout:Z

.field private mStatusBarVisible:Z

.field private mToast:Landroid/widget/Toast;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWindowRect:Landroid/graphics/Rect;

.field private mbPollForWindowSizeChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mStatusBarVisible:Z

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mWindowRect:Landroid/graphics/Rect;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    iput-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mRedoLayout:Z

    .line 56
    iput-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lhecticman/jsterm/TermViewFlipper$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/TermViewFlipper$1;-><init>(Lhecticman/jsterm/TermViewFlipper;)V

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mCheckSize:Ljava/lang/Runnable;

    .line 84
    invoke-direct {p0, p1}, Lhecticman/jsterm/TermViewFlipper;->commonConstructor(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mStatusBarVisible:Z

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mWindowRect:Landroid/graphics/Rect;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    iput-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mRedoLayout:Z

    .line 56
    iput-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lhecticman/jsterm/TermViewFlipper$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/TermViewFlipper$1;-><init>(Lhecticman/jsterm/TermViewFlipper;)V

    iput-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mCheckSize:Ljava/lang/Runnable;

    .line 89
    invoke-direct {p0, p1}, Lhecticman/jsterm/TermViewFlipper;->commonConstructor(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method static synthetic access$0(Lhecticman/jsterm/TermViewFlipper;)V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->adjustChildSize()V

    return-void
.end method

.method static synthetic access$1(Lhecticman/jsterm/TermViewFlipper;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustChildSize()V
    .registers 9

    .prologue
    .line 250
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->updateVisibleRect()V

    .line 251
    iget-object v4, p0, Lhecticman/jsterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 252
    .local v4, "visible":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 253
    .local v5, "width":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 255
    .local v1, "height":I
    iget v6, p0, Lhecticman/jsterm/TermViewFlipper;->mCurWidth:I

    if-ne v6, v5, :cond_15

    iget v6, p0, Lhecticman/jsterm/TermViewFlipper;->mCurHeight:I

    if-eq v6, v1, :cond_38

    .line 256
    :cond_15
    iput v5, p0, Lhecticman/jsterm/TermViewFlipper;->mCurWidth:I

    .line 257
    iput v1, p0, Lhecticman/jsterm/TermViewFlipper;->mCurHeight:I

    .line 259
    iget-object v2, p0, Lhecticman/jsterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 261
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 262
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_39

    .line 265
    const/4 v6, 0x1

    iput-boolean v6, p0, Lhecticman/jsterm/TermViewFlipper;->mRedoLayout:Z

    .line 267
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 268
    .local v0, "currentView":Lhecticman/jsterm/emulatorview/EmulatorView;
    if-eqz v0, :cond_38

    .line 269
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 272
    .end local v0    # "currentView":Lhecticman/jsterm/emulatorview/EmulatorView;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_38
    return-void

    .line 262
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_39
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 263
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0, v3, v2}, Lhecticman/jsterm/TermViewFlipper;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23
.end method

.method private commonConstructor(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    iput-object p1, p0, Lhecticman/jsterm/TermViewFlipper;->context:Landroid/content/Context;

    .line 94
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->callbacks:Ljava/util/LinkedList;

    .line 96
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->updateVisibleRect()V

    .line 97
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 98
    .local v0, "visible":Landroid/graphics/Rect;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 99
    const/16 v4, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 98
    iput-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    return-void
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 125
    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 128
    return-void

    .line 125
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/UpdateCallback;

    .line 126
    .local v0, "callback":Lhecticman/jsterm/emulatorview/UpdateCallback;
    invoke-interface {v0}, Lhecticman/jsterm/emulatorview/UpdateCallback;->onUpdate()V

    goto :goto_6
.end method

.method private showTitle()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 162
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 173
    :goto_7
    return-void

    .line 165
    :cond_8
    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->context:Landroid/content/Context;

    const v2, 0x7f07002e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->getDisplayedChild()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_39

    .line 167
    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    .line 168
    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 172
    :goto_33
    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 170
    :cond_39
    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method

.method private updateVisibleRect()V
    .registers 5

    .prologue
    .line 213
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 214
    .local v0, "visible":Landroid/graphics/Rect;
    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->mWindowRect:Landroid/graphics/Rect;

    .line 219
    .local v1, "window":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lhecticman/jsterm/TermViewFlipper;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 223
    invoke-virtual {p0, v1}, Lhecticman/jsterm/TermViewFlipper;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 226
    iget-boolean v2, p0, Lhecticman/jsterm/TermViewFlipper;->mStatusBarVisible:Z

    if-nez v2, :cond_11

    .line 227
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 231
    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_2e

    .line 232
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 233
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 245
    :cond_25
    :goto_25
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 246
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 247
    return-void

    .line 235
    :cond_2e
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_38

    .line 236
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 238
    :cond_38
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_25

    .line 239
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_25
.end method


# virtual methods
.method public addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "callback"    # Lhecticman/jsterm/emulatorview/UpdateCallback;

    .prologue
    .line 117
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-super {p0, p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-super {p0, p1, p2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lhecticman/jsterm/TermViewFlipper$ViewFlipperIterator;

    invoke-direct {v0, p0}, Lhecticman/jsterm/TermViewFlipper$ViewFlipperIterator;-><init>(Lhecticman/jsterm/TermViewFlipper;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 286
    iget-boolean v0, p0, Lhecticman/jsterm/TermViewFlipper;->mRedoLayout:Z

    if-eqz v0, :cond_a

    .line 287
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->requestLayout()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/TermViewFlipper;->mRedoLayout:Z

    .line 290
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onDraw(Landroid/graphics/Canvas;)V

    .line 291
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 280
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->adjustChildSize()V

    .line 281
    invoke-super {p0, p1, p2}, Landroid/widget/ViewFlipper;->onMeasure(II)V

    .line 282
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 131
    iget-boolean v0, p0, Lhecticman/jsterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhecticman/jsterm/TermViewFlipper;->mCheckSize:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    :cond_b
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->pauseCurrentView()V

    .line 135
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lhecticman/jsterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    if-eqz v0, :cond_9

    .line 139
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->mCheckSize:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 141
    :cond_9
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->resumeCurrentView()V

    .line 142
    return-void
.end method

.method public pauseCurrentView()V
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 146
    .local v0, "view":Lhecticman/jsterm/emulatorview/EmulatorView;
    if-nez v0, :cond_9

    .line 150
    :goto_8
    return-void

    .line 149
    :cond_9
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->onPause()V

    goto :goto_8
.end method

.method public removeCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "callback"    # Lhecticman/jsterm/emulatorview/UpdateCallback;

    .prologue
    .line 121
    iget-object v0, p0, Lhecticman/jsterm/TermViewFlipper;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public resumeCurrentView()V
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 154
    .local v0, "view":Lhecticman/jsterm/emulatorview/EmulatorView;
    if-nez v0, :cond_9

    .line 159
    :goto_8
    return-void

    .line 157
    :cond_9
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->onResume()V

    .line 158
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->requestFocus()Z

    goto :goto_8
.end method

.method public setDisplayedChild(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->pauseCurrentView()V

    .line 196
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 197
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->showTitle()V

    .line 198
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->resumeCurrentView()V

    .line 199
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->notifyChange()V

    .line 200
    return-void
.end method

.method public showNext()V
    .registers 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->pauseCurrentView()V

    .line 187
    invoke-super {p0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 188
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->showTitle()V

    .line 189
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->resumeCurrentView()V

    .line 190
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->notifyChange()V

    .line 191
    return-void
.end method

.method public showPrevious()V
    .registers 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->pauseCurrentView()V

    .line 178
    invoke-super {p0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 179
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->showTitle()V

    .line 180
    invoke-virtual {p0}, Lhecticman/jsterm/TermViewFlipper;->resumeCurrentView()V

    .line 181
    invoke-direct {p0}, Lhecticman/jsterm/TermViewFlipper;->notifyChange()V

    .line 182
    return-void
.end method

.method public updatePrefs(Lhecticman/jsterm/util/TermSettings;)V
    .registers 5
    .param p1, "settings"    # Lhecticman/jsterm/util/TermSettings;

    .prologue
    .line 103
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->showStatusBar()Z

    move-result v1

    iput-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mStatusBarVisible:Z

    .line 104
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getColorScheme()[I

    move-result-object v0

    .line 105
    .local v0, "colorScheme":[I
    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Lhecticman/jsterm/TermViewFlipper;->setBackgroundColor(I)V

    .line 107
    sget v1, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1d

    .line 108
    iget-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mStatusBarVisible:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    :goto_1b
    iput-boolean v1, p0, Lhecticman/jsterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    .line 110
    :cond_1d
    return-void

    .line 108
    :cond_1e
    const/4 v1, 0x1

    goto :goto_1b
.end method
