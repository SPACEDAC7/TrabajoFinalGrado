.class public Ljackpal/androidterm/TermViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "TermViewFlipper.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;
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
            "Ljackpal/androidterm/emulatorview/UpdateCallback;",
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

.field private final mbPollForWindowSizeChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mStatusBarVisible:Z

    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mWindowRect:Landroid/graphics/Rect;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mRedoLayout:Z

    .line 57
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljackpal/androidterm/TermViewFlipper$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/TermViewFlipper$1;-><init>(Ljackpal/androidterm/TermViewFlipper;)V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mCheckSize:Ljava/lang/Runnable;

    .line 85
    invoke-direct {p0, p1}, Ljackpal/androidterm/TermViewFlipper;->commonConstructor(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mStatusBarVisible:Z

    .line 47
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mWindowRect:Landroid/graphics/Rect;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mRedoLayout:Z

    .line 57
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_20

    const/4 v0, 0x1

    :cond_20
    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljackpal/androidterm/TermViewFlipper$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/TermViewFlipper$1;-><init>(Ljackpal/androidterm/TermViewFlipper;)V

    iput-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mCheckSize:Ljava/lang/Runnable;

    .line 90
    invoke-direct {p0, p1}, Ljackpal/androidterm/TermViewFlipper;->commonConstructor(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/TermViewFlipper;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/TermViewFlipper;

    .prologue
    .line 39
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->adjustChildSize()V

    return-void
.end method

.method static synthetic access$100(Ljackpal/androidterm/TermViewFlipper;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/TermViewFlipper;

    .prologue
    .line 39
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustChildSize()V
    .registers 9

    .prologue
    .line 262
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->updateVisibleRect()V

    .line 263
    iget-object v5, p0, Ljackpal/androidterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 264
    .local v5, "visible":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 265
    .local v6, "width":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 267
    .local v1, "height":I
    iget v7, p0, Ljackpal/androidterm/TermViewFlipper;->mCurWidth:I

    if-ne v7, v6, :cond_15

    iget v7, p0, Ljackpal/androidterm/TermViewFlipper;->mCurHeight:I

    if-eq v7, v1, :cond_42

    .line 268
    :cond_15
    iput v6, p0, Ljackpal/androidterm/TermViewFlipper;->mCurWidth:I

    .line 269
    iput v1, p0, Ljackpal/androidterm/TermViewFlipper;->mCurHeight:I

    .line 271
    iget-object v3, p0, Ljackpal/androidterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 273
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 274
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 275
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p0, v4, v3}, Ljackpal/androidterm/TermViewFlipper;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    .line 277
    .end local v4    # "v":Landroid/view/View;
    :cond_33
    const/4 v7, 0x1

    iput-boolean v7, p0, Ljackpal/androidterm/TermViewFlipper;->mRedoLayout:Z

    .line 279
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 280
    .local v0, "currentView":Ljackpal/androidterm/emulatorview/EmulatorView;
    if-eqz v0, :cond_42

    .line 281
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 284
    .end local v0    # "currentView":Ljackpal/androidterm/emulatorview/EmulatorView;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_42
    return-void
.end method

.method private commonConstructor(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    iput-object p1, p0, Ljackpal/androidterm/TermViewFlipper;->context:Landroid/content/Context;

    .line 95
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->callbacks:Ljava/util/LinkedList;

    .line 97
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->updateVisibleRect()V

    .line 98
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 99
    .local v0, "visible":Landroid/graphics/Rect;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/16 v4, 0x33

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    return-void
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 123
    iget-object v2, p0, Ljackpal/androidterm/TermViewFlipper;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 124
    .local v0, "callback":Ljackpal/androidterm/emulatorview/UpdateCallback;
    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    goto :goto_6

    .line 126
    .end local v0    # "callback":Ljackpal/androidterm/emulatorview/UpdateCallback;
    :cond_16
    return-void
.end method

.method private showTitle()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 160
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 185
    :cond_7
    :goto_7
    return-void

    .line 164
    :cond_8
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 165
    .local v2, "view":Ljackpal/androidterm/emulatorview/EmulatorView;
    if-eqz v2, :cond_7

    .line 168
    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->getTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 169
    .local v0, "session":Ljackpal/androidterm/emulatorview/TermSession;
    if-eqz v0, :cond_7

    .line 173
    iget-object v3, p0, Ljackpal/androidterm/TermViewFlipper;->context:Landroid/content/Context;

    const v4, 0x7f09008e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "title":Ljava/lang/String;
    instance-of v3, v0, Ljackpal/androidterm/GenericTermSession;

    if-eqz v3, :cond_38

    .line 175
    check-cast v0, Ljackpal/androidterm/GenericTermSession;

    .end local v0    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v0, v1}, Ljackpal/androidterm/GenericTermSession;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_38
    iget-object v3, p0, Ljackpal/androidterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_51

    .line 179
    iget-object v3, p0, Ljackpal/androidterm/TermViewFlipper;->context:Landroid/content/Context;

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Ljackpal/androidterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    .line 180
    iget-object v3, p0, Ljackpal/androidterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 184
    :goto_4b
    iget-object v3, p0, Ljackpal/androidterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 182
    :cond_51
    iget-object v3, p0, Ljackpal/androidterm/TermViewFlipper;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4b
.end method

.method private updateVisibleRect()V
    .registers 5

    .prologue
    .line 225
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mVisibleRect:Landroid/graphics/Rect;

    .line 226
    .local v0, "visible":Landroid/graphics/Rect;
    iget-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mWindowRect:Landroid/graphics/Rect;

    .line 231
    .local v1, "window":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermViewFlipper;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 235
    invoke-virtual {p0, v1}, Ljackpal/androidterm/TermViewFlipper;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 238
    iget-boolean v2, p0, Ljackpal/androidterm/TermViewFlipper;->mStatusBarVisible:Z

    if-nez v2, :cond_11

    .line 239
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 243
    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_2e

    .line 244
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 245
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 257
    :cond_25
    :goto_25
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 258
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 259
    return-void

    .line 247
    :cond_2e
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_38

    .line 248
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 250
    :cond_38
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_25

    .line 251
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_25
.end method


# virtual methods
.method public addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "callback"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 115
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-super {p0, p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 216
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mChildParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-super {p0, p1, p2, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 217
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
    .line 111
    new-instance v0, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;

    invoke-direct {v0, p0}, Ljackpal/androidterm/TermViewFlipper$ViewFlipperIterator;-><init>(Ljackpal/androidterm/TermViewFlipper;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 298
    iget-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mRedoLayout:Z

    if-eqz v0, :cond_a

    .line 299
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->requestLayout()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mRedoLayout:Z

    .line 302
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onDraw(Landroid/graphics/Canvas;)V

    .line 303
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 292
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->adjustChildSize()V

    .line 293
    invoke-super {p0, p1, p2}, Landroid/widget/ViewFlipper;->onMeasure(II)V

    .line 294
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 129
    iget-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    if-eqz v0, :cond_b

    .line 130
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ljackpal/androidterm/TermViewFlipper;->mCheckSize:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    :cond_b
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->pauseCurrentView()V

    .line 133
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Ljackpal/androidterm/TermViewFlipper;->mbPollForWindowSizeChange:Z

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->mCheckSize:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 139
    :cond_9
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->resumeCurrentView()V

    .line 140
    return-void
.end method

.method public pauseCurrentView()V
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 144
    .local v0, "view":Ljackpal/androidterm/emulatorview/EmulatorView;
    if-nez v0, :cond_9

    .line 148
    :goto_8
    return-void

    .line 147
    :cond_9
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->onPause()V

    goto :goto_8
.end method

.method public removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "callback"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 119
    iget-object v0, p0, Ljackpal/androidterm/TermViewFlipper;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public resumeCurrentView()V
    .registers 2

    .prologue
    .line 151
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 152
    .local v0, "view":Ljackpal/androidterm/emulatorview/EmulatorView;
    if-nez v0, :cond_9

    .line 157
    :goto_8
    return-void

    .line 155
    :cond_9
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->onResume()V

    .line 156
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->requestFocus()Z

    goto :goto_8
.end method

.method public setDisplayedChild(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->pauseCurrentView()V

    .line 208
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 209
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->showTitle()V

    .line 210
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->resumeCurrentView()V

    .line 211
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->notifyChange()V

    .line 212
    return-void
.end method

.method public showNext()V
    .registers 1

    .prologue
    .line 198
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->pauseCurrentView()V

    .line 199
    invoke-super {p0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 200
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->showTitle()V

    .line 201
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->resumeCurrentView()V

    .line 202
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->notifyChange()V

    .line 203
    return-void
.end method

.method public showPrevious()V
    .registers 1

    .prologue
    .line 189
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->pauseCurrentView()V

    .line 190
    invoke-super {p0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 191
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->showTitle()V

    .line 192
    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->resumeCurrentView()V

    .line 193
    invoke-direct {p0}, Ljackpal/androidterm/TermViewFlipper;->notifyChange()V

    .line 194
    return-void
.end method

.method public updatePrefs(Ljackpal/androidterm/util/TermSettings;)V
    .registers 5
    .param p1, "settings"    # Ljackpal/androidterm/util/TermSettings;

    .prologue
    .line 104
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->showStatusBar()Z

    move-result v1

    .line 105
    .local v1, "statusBarVisible":Z
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getColorScheme()[I

    move-result-object v0

    .line 106
    .local v0, "colorScheme":[I
    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, v2}, Ljackpal/androidterm/TermViewFlipper;->setBackgroundColor(I)V

    .line 107
    iput-boolean v1, p0, Ljackpal/androidterm/TermViewFlipper;->mStatusBarVisible:Z

    .line 108
    return-void
.end method
