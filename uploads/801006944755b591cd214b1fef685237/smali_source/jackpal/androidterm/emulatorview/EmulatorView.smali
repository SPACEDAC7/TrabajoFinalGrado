.class public Ljackpal/androidterm/emulatorview/EmulatorView;
.super Landroid/view/View;
.source "EmulatorView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;,
        Ljackpal/androidterm/emulatorview/EmulatorView$HttpMatchFilter;
    }
.end annotation


# static fields
.field private static final CURSOR_BLINK_PERIOD:I = 0x3e8

.field private static final LOG_IME:Z = false

.field private static final LOG_KEY_EVENTS:Z = false

.field private static final SELECT_TEXT_OFFSET_Y:I = -0x28

.field private static final TAG:Ljava/lang/String; = "EmulatorView"

.field private static sHttpMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field private static final sTrapAltAndMeta:Z


# instance fields
.field private mBackKeySendsCharacter:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBlinkCursor:Ljava/lang/Runnable;

.field private mCharacterHeight:I

.field private mCharacterWidth:F

.field private mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

.field private mColumns:I

.field private mControlKeyCode:I

.field private mCursorBlink:I

.field private mCursorVisible:Z

.field private mDeferInit:Z

.field private mDensity:F

.field private mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

.field private mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingRunner:Ljava/lang/Runnable;

.field private mFnKeyCode:I

.field private mForegroundPaint:Landroid/graphics/Paint;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mImeBuffer:Ljava/lang/String;

.field private mIsControlKeySent:Z

.field private mIsFnKeySent:Z

.field private mIsSelectingText:Z

.field private mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

.field private mKnownSize:Z

.field private mLeftColumn:I

.field private mLinkLayer:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/text/style/URLSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mMouseTracking:Z

.field private mMouseTrackingFlingRunner:Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

.field private mRows:I

.field private mScaledDensity:F

.field private mScrollRemainder:F

.field private mScroller:Landroid/widget/Scroller;

.field private mSelX1:I

.field private mSelX2:I

.field private mSelXAnchor:I

.field private mSelY1:I

.field private mSelY2:I

.field private mSelYAnchor:I

.field private mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

.field private mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

.field private mTextSize:I

.field private mTopOfScreenMargin:I

.field private mTopRow:I

.field private mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

.field private mUseCookedIme:Z

.field private mVisibleColumns:I

.field private mVisibleHeight:I

.field private mVisibleRows:I

.field private mVisibleWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 189
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Transformer TF101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Ljackpal/androidterm/emulatorview/EmulatorView;->sTrapAltAndMeta:Z

    .line 262
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$HttpMatchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$HttpMatchFilter;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView$1;)V

    sput-object v0, Ljackpal/androidterm/emulatorview/EmulatorView;->sHttpMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 515
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 108
    const/16 v0, 0xa

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 115
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 160
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 162
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 165
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 166
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 174
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 175
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 176
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 177
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 178
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 179
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 191
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$1;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 207
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$2;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mFlingRunner:Ljava/lang/Runnable;

    .line 235
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLinkLayer:Ljava/util/Hashtable;

    .line 463
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;Ljackpal/androidterm/emulatorview/EmulatorView$1;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mMouseTrackingFlingRunner:Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

    .line 468
    const-string v0, ""

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 478
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 516
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->commonConstructor(Landroid/content/Context;)V

    .line 517
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 528
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 108
    const/16 v0, 0xa

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 115
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 160
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 162
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 165
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 166
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 174
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 175
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 176
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 177
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 178
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 179
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 191
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$1;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 207
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$2;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mFlingRunner:Ljava/lang/Runnable;

    .line 235
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLinkLayer:Ljava/util/Hashtable;

    .line 463
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;Ljackpal/androidterm/emulatorview/EmulatorView$1;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mMouseTrackingFlingRunner:Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

    .line 468
    const-string v0, ""

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 478
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 529
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->commonConstructor(Landroid/content/Context;)V

    .line 530
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljackpal/androidterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Ljackpal/androidterm/emulatorview/TermSession;
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 501
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 108
    const/16 v0, 0xa

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 115
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 160
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 162
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 165
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 166
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 174
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 175
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 176
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 177
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 178
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 179
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 191
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$1;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 207
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$2;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mFlingRunner:Ljava/lang/Runnable;

    .line 235
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLinkLayer:Ljava/util/Hashtable;

    .line 463
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;Ljackpal/androidterm/emulatorview/EmulatorView$1;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mMouseTrackingFlingRunner:Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

    .line 468
    const-string v0, ""

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 478
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/EmulatorView$3;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 502
    invoke-virtual {p0, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->attachSession(Ljackpal/androidterm/emulatorview/TermSession;)V

    .line 503
    invoke-virtual {p0, p3}, Ljackpal/androidterm/emulatorview/EmulatorView;->setDensity(Landroid/util/DisplayMetrics;)V

    .line 504
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->commonConstructor(Landroid/content/Context;)V

    .line 505
    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/emulatorview/EmulatorView;)I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    return v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/emulatorview/EmulatorView;)Z
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    return v0
.end method

.method static synthetic access$102(Ljackpal/androidterm/emulatorview/EmulatorView;Z)Z
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    return p1
.end method

.method static synthetic access$1020(Ljackpal/androidterm/emulatorview/EmulatorView;I)I
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    return v0
.end method

.method static synthetic access$1120(Ljackpal/androidterm/emulatorview/EmulatorView;I)I
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    return v0
.end method

.method static synthetic access$1220(Ljackpal/androidterm/emulatorview/EmulatorView;I)I
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    sub-int/2addr v0, p1

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    return v0
.end method

.method static synthetic access$1300(Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->ensureCursorVisible()V

    return-void
.end method

.method static synthetic access$1500(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermKeyListener;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    return-object v0
.end method

.method static synthetic access$1600(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TermSession;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    return-object v0
.end method

.method static synthetic access$1700(Ljackpal/androidterm/emulatorview/EmulatorView;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V

    return-void
.end method

.method static synthetic access$1800(Ljackpal/androidterm/emulatorview/EmulatorView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/emulatorview/EmulatorView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/emulatorview/EmulatorView;)Landroid/widget/Scroller;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Ljackpal/androidterm/emulatorview/EmulatorView;)I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    return v0
.end method

.method static synthetic access$402(Ljackpal/androidterm/emulatorview/EmulatorView;I)I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    return p1
.end method

.method static synthetic access$600(Ljackpal/androidterm/emulatorview/EmulatorView;Landroid/view/MotionEvent;I)V
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendMouseEventCode(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$800(Ljackpal/androidterm/emulatorview/EmulatorView;)Z
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    return v0
.end method

.method static synthetic access$900(Ljackpal/androidterm/emulatorview/EmulatorView;)Ljackpal/androidterm/emulatorview/TerminalEmulator;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/emulatorview/EmulatorView;

    .prologue
    .line 66
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    return-object v0
.end method

.method private clearSpecialKeyStatus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1420
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    if-eqz v0, :cond_f

    .line 1421
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 1422
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1423
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1425
    :cond_f
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    if-eqz v0, :cond_1d

    .line 1426
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 1427
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1428
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1430
    :cond_1d
    return-void
.end method

.method private commonConstructor(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 534
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScroller:Landroid/widget/Scroller;

    .line 535
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mMouseTrackingFlingRunner:Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    # setter for: Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->access$1402(Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    .line 536
    return-void
.end method

.method private createLinks(I)I
    .registers 38
    .param p1, "row"    # I

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v28

    .line 274
    .local v28, "transcriptScreen":Ljackpal/androidterm/emulatorview/TranscriptScreen;
    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getScriptLine(I)[C

    move-result-object v10

    .line 275
    .local v10, "line":[C
    const/4 v11, 0x1

    .line 278
    .local v11, "lineCount":I
    if-nez v10, :cond_17

    move v12, v11

    .line 419
    .end local v11    # "lineCount":I
    .local v12, "lineCount":I
    :goto_16
    return v12

    .line 289
    .end local v12    # "lineCount":I
    .restart local v11    # "lineCount":I
    :cond_17
    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->isBasicLine(I)Z

    move-result v26

    .line 290
    .local v26, "textIsBasic":Z
    if-eqz v26, :cond_a1

    .line 291
    array-length v14, v10

    .line 297
    .local v14, "lineLen":I
    :cond_22
    new-instance v27, Landroid/text/SpannableStringBuilder;

    new-instance v32, Ljava/lang/String;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v0, v10, v1, v14}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 299
    .local v27, "textToLinkify":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getScriptLineWrap(I)Z

    move-result v15

    .line 302
    .local v15, "lineWrap":Z
    :goto_3e
    if-eqz v15, :cond_4c

    .line 305
    add-int v17, p1, v11

    .line 306
    .local v17, "nextRow":I
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getScriptLine(I)[C

    move-result-object v10

    .line 309
    if-nez v10, :cond_a9

    .line 330
    .end local v17    # "nextRow":I
    :cond_4c
    sget-object v32, Ljackpal/androidterm/emulatorview/compat/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/16 v33, 0x0

    sget-object v34, Ljackpal/androidterm/emulatorview/EmulatorView;->sHttpMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/16 v35, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    .line 332
    const/16 v32, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v33

    const-class v34, Landroid/text/style/URLSpan;

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Landroid/text/style/URLSpan;

    .line 333
    .local v31, "urls":[Landroid/text/style/URLSpan;
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_1d8

    .line 335
    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    .line 338
    .local v6, "columns":I
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    move/from16 v32, v0

    sub-int v20, p1, v32

    .line 341
    .local v20, "screenRow":I
    new-array v0, v11, [[Landroid/text/style/URLSpan;

    move-object/from16 v16, v0

    .line 342
    .local v16, "linkRows":[[Landroid/text/style/URLSpan;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8f
    if-ge v9, v11, :cond_e0

    .line 344
    new-array v0, v6, [Landroid/text/style/URLSpan;

    move-object/from16 v32, v0

    aput-object v32, v16, v9

    .line 345
    aget-object v32, v16, v9

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    add-int/lit8 v9, v9, 0x1

    goto :goto_8f

    .line 294
    .end local v6    # "columns":I
    .end local v9    # "i":I
    .end local v14    # "lineLen":I
    .end local v15    # "lineWrap":Z
    .end local v16    # "linkRows":[[Landroid/text/style/URLSpan;
    .end local v20    # "screenRow":I
    .end local v27    # "textToLinkify":Landroid/text/SpannableStringBuilder;
    .end local v31    # "urls":[Landroid/text/style/URLSpan;
    :cond_a1
    const/4 v14, 0x0

    .restart local v14    # "lineLen":I
    :goto_a2
    aget-char v32, v10, v14

    if-eqz v32, :cond_22

    add-int/lit8 v14, v14, 0x1

    goto :goto_a2

    .line 312
    .restart local v15    # "lineWrap":Z
    .restart local v17    # "nextRow":I
    .restart local v27    # "textToLinkify":Landroid/text/SpannableStringBuilder;
    :cond_a9
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->isBasicLine(I)Z

    move-result v13

    .line 313
    .local v13, "lineIsBasic":Z
    if-eqz v26, :cond_b7

    if-nez v13, :cond_b7

    .line 314
    move/from16 v26, v13

    .line 316
    :cond_b7
    if-eqz v13, :cond_d8

    .line 317
    array-length v14, v10

    .line 323
    :cond_ba
    new-instance v32, Ljava/lang/String;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v0, v10, v1, v14}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 326
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getScriptLineWrap(I)Z

    move-result v15

    .line 327
    add-int/lit8 v11, v11, 0x1

    .line 328
    goto/16 :goto_3e

    .line 320
    :cond_d8
    const/4 v14, 0x0

    :goto_d9
    aget-char v32, v10, v14

    if-eqz v32, :cond_ba

    add-int/lit8 v14, v14, 0x1

    goto :goto_d9

    .line 349
    .end local v13    # "lineIsBasic":Z
    .end local v17    # "nextRow":I
    .restart local v6    # "columns":I
    .restart local v9    # "i":I
    .restart local v16    # "linkRows":[[Landroid/text/style/URLSpan;
    .restart local v20    # "screenRow":I
    .restart local v31    # "urls":[Landroid/text/style/URLSpan;
    :cond_e0
    const/16 v30, 0x0

    .local v30, "urlNum":I
    :goto_e2
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_1c1

    .line 351
    aget-object v29, v31, v30

    .line 352
    .local v29, "url":Landroid/text/style/URLSpan;
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    .line 353
    .local v23, "spanStart":I
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    .line 360
    .local v21, "spanEnd":I
    if-eqz v26, :cond_143

    .line 363
    add-int/lit8 v22, v21, -0x1

    .line 365
    .local v22, "spanLastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    move/from16 v32, v0

    div-int v25, v23, v32

    .line 366
    .local v25, "startRow":I
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    move/from16 v32, v0

    rem-int v24, v23, v32

    .line 367
    .local v24, "startCol":I
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    move/from16 v32, v0

    div-int v8, v22, v32

    .line 368
    .local v8, "endRow":I
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    move/from16 v32, v0

    rem-int v7, v22, v32

    .line 406
    .end local v22    # "spanLastPos":I
    .local v7, "endCol":I
    :cond_123
    move/from16 v9, v25

    :goto_125
    if-gt v9, v8, :cond_1bd

    .line 408
    move/from16 v0, v25

    if-ne v9, v0, :cond_1af

    move/from16 v19, v24

    .line 409
    .local v19, "runStart":I
    :goto_12d
    if-ne v9, v8, :cond_1b3

    move/from16 v18, v7

    .line 411
    .local v18, "runEnd":I
    :goto_131
    aget-object v32, v16, v9

    add-int/lit8 v33, v18, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v19

    move/from16 v2, v33

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 406
    add-int/lit8 v9, v9, 0x1

    goto :goto_125

    .line 372
    .end local v7    # "endCol":I
    .end local v8    # "endRow":I
    .end local v18    # "runEnd":I
    .end local v19    # "runStart":I
    .end local v24    # "startCol":I
    .end local v25    # "startRow":I
    :cond_143
    const/16 v25, 0x0

    .line 373
    .restart local v25    # "startRow":I
    const/16 v24, 0x0

    .line 374
    .restart local v24    # "startCol":I
    const/4 v9, 0x0

    :goto_148
    move/from16 v0, v23

    if-ge v9, v0, :cond_17a

    .line 375
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    .line 376
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v32

    if-eqz v32, :cond_173

    .line 377
    add-int/lit8 v9, v9, 0x1

    .line 378
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v32

    move/from16 v0, v32

    invoke-static {v5, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(CC)I

    move-result v32

    add-int v24, v24, v32

    .line 382
    :goto_168
    move/from16 v0, v24

    if-lt v0, v6, :cond_170

    .line 383
    add-int/lit8 v25, v25, 0x1

    .line 384
    rem-int v24, v24, v6

    .line 374
    :cond_170
    add-int/lit8 v9, v9, 0x1

    goto :goto_148

    .line 380
    :cond_173
    invoke-static {v5}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v32

    add-int v24, v24, v32

    goto :goto_168

    .line 388
    .end local v5    # "c":C
    :cond_17a
    move/from16 v8, v25

    .line 389
    .restart local v8    # "endRow":I
    move/from16 v7, v24

    .line 390
    .restart local v7    # "endCol":I
    move/from16 v9, v23

    :goto_180
    move/from16 v0, v21

    if-ge v9, v0, :cond_123

    .line 391
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    .line 392
    .restart local v5    # "c":C
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v32

    if-eqz v32, :cond_1a8

    .line 393
    add-int/lit8 v9, v9, 0x1

    .line 394
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v32

    move/from16 v0, v32

    invoke-static {v5, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(CC)I

    move-result v32

    add-int v7, v7, v32

    .line 398
    :goto_1a0
    if-lt v7, v6, :cond_1a5

    .line 399
    add-int/lit8 v8, v8, 0x1

    .line 400
    rem-int/2addr v7, v6

    .line 390
    :cond_1a5
    add-int/lit8 v9, v9, 0x1

    goto :goto_180

    .line 396
    :cond_1a8
    invoke-static {v5}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v32

    add-int v7, v7, v32

    goto :goto_1a0

    .line 408
    .end local v5    # "c":C
    :cond_1af
    const/16 v19, 0x0

    goto/16 :goto_12d

    .line 409
    .restart local v19    # "runStart":I
    :cond_1b3
    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    move/from16 v32, v0

    add-int/lit8 v18, v32, -0x1

    goto/16 :goto_131

    .line 349
    .end local v19    # "runStart":I
    :cond_1bd
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_e2

    .line 416
    .end local v7    # "endCol":I
    .end local v8    # "endRow":I
    .end local v21    # "spanEnd":I
    .end local v23    # "spanStart":I
    .end local v24    # "startCol":I
    .end local v25    # "startRow":I
    .end local v29    # "url":Landroid/text/style/URLSpan;
    :cond_1c1
    const/4 v9, 0x0

    :goto_1c2
    if-ge v9, v11, :cond_1d8

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLinkLayer:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    add-int v33, v20, v9

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aget-object v34, v16, v9

    invoke-virtual/range {v32 .. v34}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c2

    .end local v6    # "columns":I
    .end local v9    # "i":I
    .end local v16    # "linkRows":[[Landroid/text/style/URLSpan;
    .end local v20    # "screenRow":I
    .end local v30    # "urlNum":I
    :cond_1d8
    move v12, v11

    .line 419
    .end local v11    # "lineCount":I
    .restart local v12    # "lineCount":I
    goto/16 :goto_16
.end method

.method private ensureCursorVisible()V
    .registers 5

    .prologue
    .line 1574
    const/4 v2, 0x0

    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1575
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    if-lez v2, :cond_1b

    .line 1576
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v0

    .line 1577
    .local v0, "cx":I
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v2

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    sub-int v1, v2, v3

    .line 1578
    .local v1, "visibleCursorX":I
    if-gez v1, :cond_1c

    .line 1579
    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 1584
    .end local v0    # "cx":I
    .end local v1    # "visibleCursorX":I
    :cond_1b
    :goto_1b
    return-void

    .line 1580
    .restart local v0    # "cx":I
    .restart local v1    # "visibleCursorX":I
    :cond_1c
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    if-lt v1, v2, :cond_1b

    .line 1581
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    goto :goto_1b
.end method

.method private handleControlKey(IZ)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 1378
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mControlKeyCode:I

    if-ne p1, v0, :cond_e

    .line 1382
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1383
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1384
    const/4 v0, 0x1

    .line 1386
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private handleFnKey(IZ)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 1404
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mFnKeyCode:I

    if-ne p1, v0, :cond_e

    .line 1408
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1409
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1410
    const/4 v0, 0x1

    .line 1412
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private handleHardwareControlKey(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1390
    const/16 v2, 0x71

    if-eq p1, v2, :cond_a

    const/16 v2, 0x72

    if-ne p1, v2, :cond_1a

    .line 1395
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_11

    move v0, v1

    .line 1396
    .local v0, "down":Z
    :cond_11
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v2, v0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleHardwareControlKey(Z)V

    .line 1397
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    move v0, v1

    .line 1400
    .end local v0    # "down":Z
    :cond_1a
    return v0
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 981
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    .line 983
    .local v0, "session":Ljackpal/androidterm/emulatorview/TermSession;
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateText()V

    .line 985
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->getEmulator()Ljackpal/androidterm/emulatorview/TerminalEmulator;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    .line 986
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUpdateNotify:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermSession;->setUpdateCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 988
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->requestFocus()Z

    .line 989
    return-void
.end method

.method private isInterceptedSystemKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1313
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isSystemKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1416
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    return v0
.end method

.method private onTouchEventWhileSelectingText(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 1231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1232
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v8, v9

    float-to-int v2, v8

    .line 1233
    .local v2, "cx":I
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/high16 v10, -0x3de00000

    iget v11, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScaledDensity:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1236
    .local v3, "cy":I
    packed-switch v0, :pswitch_data_80

    .line 1264
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->toggleSelectingText()V

    .line 1265
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1268
    :goto_2d
    return v12

    .line 1238
    :pswitch_2e
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 1239
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 1240
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 1241
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 1242
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    iput v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 1243
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    iput v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    goto :goto_2d

    .line 1247
    :pswitch_3f
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1248
    .local v6, "minx":I
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelXAnchor:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1249
    .local v4, "maxx":I
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1250
    .local v7, "miny":I
    iget v8, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelYAnchor:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1251
    .local v5, "maxy":I
    iput v6, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 1252
    iput v7, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 1253
    iput v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 1254
    iput v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 1255
    if-ne v0, v12, :cond_7b

    .line 1256
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatFactory;->getManager(Landroid/content/Context;)Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;

    move-result-object v1

    .line 1258
    .local v1, "clip":Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getSelectedText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->toggleSelectingText()V

    .line 1261
    .end local v1    # "clip":Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;
    :cond_7b
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    goto :goto_2d

    .line 1236
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method private sendMouseEventCode(Landroid/view/MotionEvent;I)V
    .registers 12
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "button_code"    # I

    .prologue
    const/16 v8, 0xdf

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v2, v6, 0x1

    .line 1096
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v3, v6, 0x1

    .line 1098
    .local v3, "y":I
    if-lt v2, v5, :cond_2d

    if-lt v3, v5, :cond_2d

    iget v6, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    if-gt v2, v6, :cond_2d

    iget v6, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    if-gt v3, v6, :cond_2d

    if-gt v2, v8, :cond_2d

    if-le v3, v8, :cond_4b

    :cond_2d
    move v1, v5

    .line 1103
    .local v1, "out_of_bounds":Z
    :goto_2e
    if-ltz p2, :cond_32

    if-le p2, v8, :cond_4d

    .line 1104
    :cond_32
    const-string v4, "EmulatorView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mouse button_code out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_4a
    :goto_4a
    return-void

    .end local v1    # "out_of_bounds":Z
    :cond_4b
    move v1, v4

    .line 1098
    goto :goto_2e

    .line 1107
    .restart local v1    # "out_of_bounds":Z
    :cond_4d
    if-nez v1, :cond_4a

    .line 1108
    const/4 v6, 0x6

    new-array v0, v6, [B

    const/16 v6, 0x1b

    aput-byte v6, v0, v4

    const/16 v6, 0x5b

    aput-byte v6, v0, v5

    const/4 v5, 0x2

    const/16 v6, 0x4d

    aput-byte v6, v0, v5

    const/4 v5, 0x3

    add-int/lit8 v6, p2, 0x20

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    const/4 v5, 0x4

    add-int/lit8 v6, v2, 0x20

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    const/4 v5, 0x5

    add-int/lit8 v6, v3, 0x20

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 1113
    .local v0, "data":[B
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    array-length v6, v0

    invoke-virtual {v5, v0, v4, v6}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    goto :goto_4a
.end method

.method private setImeBuffer(Ljava/lang/String;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 921
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 922
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 924
    :cond_b
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 925
    return-void
.end method

.method private updateSize(II)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1471
    int-to-float v0, p1

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    .line 1472
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    int-to-float v0, v0

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    .line 1474
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/TextRenderer;->getTopMargin()I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    .line 1475
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    sub-int v0, p2, v0

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    .line 1476
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleRows:I

    .line 1477
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    invoke-virtual {v0, v1, v2}, Ljackpal/androidterm/emulatorview/TermSession;->updateSize(II)V

    .line 1480
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1481
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 1483
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1484
    return-void
.end method

.method private updateText()V
    .registers 4

    .prologue
    .line 1433
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 1434
    .local v0, "scheme":Ljackpal/androidterm/emulatorview/ColorScheme;
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    if-lez v1, :cond_36

    .line 1435
    new-instance v1, Ljackpal/androidterm/emulatorview/PaintRenderer;

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    invoke-direct {v1, v2, v0}, Ljackpal/androidterm/emulatorview/PaintRenderer;-><init>(ILjackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    .line 1441
    :goto_f
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/ColorScheme;->getForeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1442
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/ColorScheme;->getBackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1443
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    invoke-interface {v1}, Ljackpal/androidterm/emulatorview/TextRenderer;->getCharacterWidth()F

    move-result v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    .line 1444
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    invoke-interface {v1}, Ljackpal/androidterm/emulatorview/TextRenderer;->getCharacterHeight()I

    move-result v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    .line 1446
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 1447
    return-void

    .line 1438
    :cond_36
    new-instance v1, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;

    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;-><init>(Landroid/content/res/Resources;Ljackpal/androidterm/emulatorview/ColorScheme;)V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    goto :goto_f
.end method


# virtual methods
.method public attachSession(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 5
    .param p1, "session"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    .line 545
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mForegroundPaint:Landroid/graphics/Paint;

    .line 546
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 547
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 548
    iput v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 549
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 551
    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->setVerticalScrollBarEnabled(Z)V

    .line 552
    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->setFocusable(Z)V

    .line 553
    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->setFocusableInTouchMode(Z)V

    .line 555
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    .line 557
    new-instance v0, Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-direct {v0, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;-><init>(Ljackpal/androidterm/emulatorview/TermSession;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    .line 558
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {p1, v0}, Ljackpal/androidterm/emulatorview/TermSession;->setKeyListener(Ljackpal/androidterm/emulatorview/TermKeyListener;)V

    .line 561
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    if-eqz v0, :cond_40

    .line 562
    iput-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 563
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKnownSize:Z

    .line 564
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->initialize()V

    .line 566
    :cond_40
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 964
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 974
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveRows()I

    move-result v0

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    add-int/2addr v0, v1

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 954
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveRows()I

    move-result v0

    return v0
.end method

.method public getKeypadApplicationMode()Z
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getKeypadApplicationMode()Z

    move-result v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1613
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    iget v4, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectingText()Z
    .registers 2

    .prologue
    .line 1604
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    return v0
.end method

.method public getTermSession()Ljackpal/androidterm/emulatorview/TermSession;
    .registers 2

    .prologue
    .line 997
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    return-object v0
.end method

.method public getURLat(FF)Ljava/lang/String;
    .registers 15
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 1688
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getWidth()I

    move-result v9

    int-to-float v5, v9

    .line 1689
    .local v5, "w":F
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getHeight()I

    move-result v9

    int-to-float v1, v9

    .line 1693
    .local v1, "h":F
    cmpl-float v9, v5, v10

    if-eqz v9, :cond_14

    cmpl-float v9, v1, v10

    if-nez v9, :cond_15

    .line 1712
    :cond_14
    :goto_14
    return-object v8

    .line 1697
    :cond_15
    div-float v6, p1, v5

    .line 1698
    .local v6, "x_pos":F
    div-float v7, p2, v1

    .line 1701
    .local v7, "y_pos":F
    iget v9, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v4, v10

    .line 1702
    .local v4, "row":I
    iget v9, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v0, v10

    .line 1705
    .local v0, "col":I
    iget-object v9, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLinkLayer:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 1709
    .local v3, "linkRow":[Landroid/text/style/URLSpan;
    if-eqz v3, :cond_14

    aget-object v2, v3, v0

    .local v2, "link":Landroid/text/style/URLSpan;
    if-eqz v2, :cond_14

    .line 1710
    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    goto :goto_14
.end method

.method public getVisibleColumns()I
    .registers 2

    .prologue
    .line 1034
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    return v0
.end method

.method public getVisibleHeight()I
    .registers 2

    .prologue
    .line 1015
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    return v0
.end method

.method public getVisibleRows()I
    .registers 2

    .prologue
    .line 1025
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleRows:I

    return v0
.end method

.method public getVisibleWidth()I
    .registers 2

    .prologue
    .line 1006
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    return v0
.end method

.method public isMouseTrackingActive()Z
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getMouseTrackingMode()I

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mMouseTracking:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x1

    .line 631
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUseCookedIme:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_6
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 634
    new-instance v0, Ljackpal/androidterm/emulatorview/EmulatorView$4;

    invoke-direct {v0, p0, p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView$4;-><init>(Ljackpal/androidterm/emulatorview/EmulatorView;Landroid/view/View;Z)V

    return-object v0

    .line 631
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1212
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1216
    :goto_d
    return v1

    .line 1215
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScrollRemainder:F

    goto :goto_d
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1514
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    if-nez v1, :cond_d

    .line 1571
    :cond_c
    return-void

    .line 1521
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getWidth()I

    move-result v26

    .line 1522
    .local v26, "w":I
    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getHeight()I

    move-result v23

    .line 1524
    .local v23, "h":I
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getReverseVideo()Z

    move-result v25

    .line 1525
    .local v25, "reverseVideo":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    move/from16 v0, v25

    invoke-interface {v1, v0}, Ljackpal/androidterm/emulatorview/TextRenderer;->setReverseVideo(Z)V

    .line 1527
    if-eqz v25, :cond_106

    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mForegroundPaint:Landroid/graphics/Paint;

    .line 1529
    .local v6, "backgroundPaint":Landroid/graphics/Paint;
    :goto_2c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v26

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1530
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    neg-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterWidth:F

    mul-float v10, v1, v2

    .line 1531
    .local v10, "x":F
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    add-int/2addr v1, v2

    int-to-float v11, v1

    .line 1532
    .local v11, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    add-int v22, v1, v2

    .line 1533
    .local v22, "endLine":I
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v20

    .line 1534
    .local v20, "cx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getCursorRow()I

    move-result v21

    .line 1535
    .local v21, "cy":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorVisible:Z

    if-eqz v1, :cond_10c

    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getShowCursor()Z

    move-result v1

    if-eqz v1, :cond_10c

    const/16 v19, 0x1

    .line 1536
    .local v19, "cursorVisible":Z
    :goto_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1537
    .local v16, "effectiveImeBuffer":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCombiningAccent()I

    move-result v18

    .line 1538
    .local v18, "combiningAccent":I
    if-eqz v18, :cond_a5

    .line 1539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1541
    :cond_a5
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCursorMode()I

    move-result v17

    .line 1543
    .local v17, "cursorStyle":I
    const/16 v24, 0x0

    .line 1545
    .local v24, "linkLinesToSkip":I
    move-object/from16 v0, p0

    iget v8, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .local v8, "i":I
    :goto_b3
    move/from16 v0, v22

    if-ge v8, v0, :cond_c

    .line 1546
    const/4 v13, -0x1

    .line 1547
    .local v13, "cursorX":I
    move/from16 v0, v21

    if-ne v8, v0, :cond_c0

    if-eqz v19, :cond_c0

    .line 1548
    move/from16 v13, v20

    .line 1550
    :cond_c0
    const/4 v14, -0x1

    .line 1551
    .local v14, "selx1":I
    const/4 v15, -0x1

    .line 1552
    .local v15, "selx2":I
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    if-lt v8, v1, :cond_e2

    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    if-gt v8, v1, :cond_e2

    .line 1553
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    if-ne v8, v1, :cond_d8

    .line 1554
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 1556
    :cond_d8
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    if-ne v8, v1, :cond_110

    .line 1557
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 1562
    :cond_e2
    :goto_e2
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextRenderer:Ljackpal/androidterm/emulatorview/TextRenderer;

    move-object/from16 v9, p1

    invoke-virtual/range {v7 .. v17}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->drawText(ILandroid/graphics/Canvas;FFLjackpal/androidterm/emulatorview/TextRenderer;IIILjava/lang/String;I)V

    .line 1563
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v1, v1

    add-float/2addr v11, v1

    .line 1565
    if-nez v24, :cond_101

    .line 1566
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljackpal/androidterm/emulatorview/EmulatorView;->createLinks(I)I

    move-result v24

    .line 1569
    :cond_101
    add-int/lit8 v24, v24, -0x1

    .line 1545
    add-int/lit8 v8, v8, 0x1

    goto :goto_b3

    .line 1527
    .end local v6    # "backgroundPaint":Landroid/graphics/Paint;
    .end local v8    # "i":I
    .end local v10    # "x":F
    .end local v11    # "y":F
    .end local v13    # "cursorX":I
    .end local v14    # "selx1":I
    .end local v15    # "selx2":I
    .end local v16    # "effectiveImeBuffer":Ljava/lang/String;
    .end local v17    # "cursorStyle":I
    .end local v18    # "combiningAccent":I
    .end local v19    # "cursorVisible":Z
    .end local v20    # "cx":I
    .end local v21    # "cy":I
    .end local v22    # "endLine":I
    .end local v24    # "linkLinesToSkip":I
    :cond_106
    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    goto/16 :goto_2c

    .line 1535
    .restart local v6    # "backgroundPaint":Landroid/graphics/Paint;
    .restart local v10    # "x":F
    .restart local v11    # "y":F
    .restart local v20    # "cx":I
    .restart local v21    # "cy":I
    .restart local v22    # "endLine":I
    :cond_10c
    const/16 v19, 0x0

    goto/16 :goto_7b

    .line 1559
    .restart local v8    # "i":I
    .restart local v13    # "cursorX":I
    .restart local v14    # "selx1":I
    .restart local v15    # "selx2":I
    .restart local v16    # "effectiveImeBuffer":Ljava/lang/String;
    .restart local v17    # "cursorStyle":I
    .restart local v18    # "combiningAccent":I
    .restart local v19    # "cursorVisible":Z
    .restart local v24    # "linkLinesToSkip":I
    :cond_110
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    goto :goto_e2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1186
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1202
    :goto_e
    return v10

    .line 1190
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScrollRemainder:F

    .line 1191
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1192
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mMouseTrackingFlingRunner:Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;

    invoke-virtual {v0, p1, p3, p4}, Ljackpal/androidterm/emulatorview/EmulatorView$MouseTrackingFlingRunner;->fling(Landroid/view/MotionEvent;FF)V

    goto :goto_e

    .line 1194
    :cond_1e
    const/high16 v9, 0x3e800000

    .line 1195
    .local v9, "SCALE":F
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    mul-float v3, p3, v9

    float-to-int v3, v3

    neg-int v3, v3

    mul-float v4, p4, v9

    float-to-int v4, v4

    neg-int v4, v4

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v5}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v5

    invoke-virtual {v5}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v5

    neg-int v7, v5

    move v5, v1

    move v6, v1

    move v8, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1200
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mFlingRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method public onJumpTapDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 1172
    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1173
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1174
    const/4 v0, 0x1

    return v0
.end method

.method public onJumpTapUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 1179
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1180
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1181
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1283
    invoke-direct {p0, p1, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleControlKey(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1308
    :cond_7
    :goto_7
    return v2

    .line 1285
    :cond_8
    invoke-direct {p0, p1, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleFnKey(IZ)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1287
    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->isSystemKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1288
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->isInterceptedSystemKey(I)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1290
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_7

    .line 1297
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCombiningAccent()I

    move-result v0

    .line 1298
    .local v0, "oldCombiningAccent":I
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCursorMode()I

    move-result v1

    .line 1299
    .local v1, "oldCursorMode":I
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getKeypadApplicationMode()Z

    move-result v4

    invoke-static {p2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->isEventFromToggleDevice(Landroid/view/KeyEvent;)Z

    move-result v5

    invoke-virtual {v3, p1, p2, v4, v5}, Ljackpal/androidterm/emulatorview/TermKeyListener;->keyDown(ILandroid/view/KeyEvent;ZZ)V

    .line 1301
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCombiningAccent()I

    move-result v3

    if-ne v3, v0, :cond_48

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCursorMode()I

    move-result v3

    if-eq v3, v1, :cond_7

    .line 1303
    :cond_48
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_4b} :catch_4c

    goto :goto_7

    .line 1305
    .end local v0    # "oldCombiningAccent":I
    .end local v1    # "oldCursorMode":I
    :catch_4c
    move-exception v3

    goto :goto_7
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1346
    sget-boolean v7, Ljackpal/androidterm/emulatorview/EmulatorView;->sTrapAltAndMeta:Z

    if-eqz v7, :cond_4e

    .line 1347
    iget-object v7, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v7}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getAltSendsEsc()Z

    move-result v1

    .line 1348
    .local v1, "altEsc":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_43

    move v2, v5

    .line 1349
    .local v2, "altOn":Z
    :goto_15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    const/high16 v8, 0x10000

    and-int/2addr v7, v8

    if-eqz v7, :cond_45

    move v4, v5

    .line 1350
    .local v4, "metaOn":Z
    :goto_1f
    const/16 v7, 0x39

    if-eq p1, v7, :cond_27

    const/16 v7, 0x3a

    if-ne p1, v7, :cond_47

    :cond_27
    move v3, v5

    .line 1352
    .local v3, "altPressed":Z
    :goto_28
    iget-object v6, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v6}, Ljackpal/androidterm/emulatorview/TermKeyListener;->isAltActive()Z

    move-result v0

    .line 1353
    .local v0, "altActive":Z
    if-eqz v1, :cond_4e

    if-nez v2, :cond_38

    if-nez v3, :cond_38

    if-nez v0, :cond_38

    if-eqz v4, :cond_4e

    .line 1354
    :cond_38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_49

    .line 1355
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 1374
    .end local v0    # "altActive":Z
    .end local v1    # "altEsc":Z
    .end local v2    # "altOn":Z
    .end local v3    # "altPressed":Z
    .end local v4    # "metaOn":Z
    :cond_42
    :goto_42
    return v5

    .restart local v1    # "altEsc":Z
    :cond_43
    move v2, v6

    .line 1348
    goto :goto_15

    .restart local v2    # "altOn":Z
    :cond_45
    move v4, v6

    .line 1349
    goto :goto_1f

    .restart local v4    # "metaOn":Z
    :cond_47
    move v3, v6

    .line 1350
    goto :goto_28

    .line 1357
    .restart local v0    # "altActive":Z
    .restart local v3    # "altPressed":Z
    :cond_49
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_42

    .line 1362
    .end local v0    # "altActive":Z
    .end local v1    # "altEsc":Z
    .end local v2    # "altOn":Z
    .end local v3    # "altPressed":Z
    .end local v4    # "metaOn":Z
    :cond_4e
    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleHardwareControlKey(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 1366
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v5}, Ljackpal/androidterm/emulatorview/TermKeyListener;->isCtrlActive()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1367
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_67

    .line 1368
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_42

    .line 1370
    :cond_67
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_42

    .line 1374
    :cond_6c
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_42
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1328
    invoke-direct {p0, p1, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleControlKey(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1341
    :cond_8
    :goto_8
    return v0

    .line 1330
    :cond_9
    invoke-direct {p0, p1, v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->handleFnKey(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1332
    invoke-direct {p0, p1, p2}, Ljackpal/androidterm/emulatorview/EmulatorView;->isSystemKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1334
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->isInterceptedSystemKey(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1335
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8

    .line 1339
    :cond_20
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v1, p1, p2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->keyUp(ILandroid/view/KeyEvent;)V

    .line 1340
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V

    goto :goto_8
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1135
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->showContextMenu()Z

    .line 1136
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 599
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-eqz v0, :cond_b

    .line 600
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 602
    :cond_b
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    if-eqz v0, :cond_14

    .line 603
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->onPause()V

    .line 605
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 587
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-eqz v0, :cond_11

    .line 588
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 590
    :cond_11
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    if-eqz v0, :cond_1a

    .line 591
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->onResume()V

    .line 593
    :cond_1a
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v4, 0x1

    .line 1140
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v1, :cond_e

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1164
    :cond_d
    :goto_d
    return v4

    .line 1144
    :cond_e
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScrollRemainder:F

    add-float/2addr p4, v1

    .line 1145
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v1, v1

    div-float v1, p4, v1

    float-to-int v0, v1

    .line 1146
    .local v0, "deltaRows":I
    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mCharacterHeight:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    sub-float v1, p4, v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScrollRemainder:F

    .line 1148
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->isMouseTrackingActive()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1150
    :goto_25
    if-lez v0, :cond_2f

    .line 1151
    const/16 v1, 0x41

    invoke-direct {p0, p1, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendMouseEventCode(Landroid/view/MotionEvent;I)V

    .line 1150
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 1153
    :cond_2f
    :goto_2f
    if-gez v0, :cond_d

    .line 1154
    const/16 v1, 0x40

    invoke-direct {p0, p1, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendMouseEventCode(Landroid/view/MotionEvent;I)V

    .line 1153
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1159
    :cond_39
    const/4 v1, 0x0

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v2

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v2

    neg-int v2, v2

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1162
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    goto :goto_d
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1206
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_9

    .line 1207
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 1209
    :cond_9
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1168
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 1120
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1130
    :goto_d
    return v1

    .line 1124
    :cond_e
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendMouseEventCode(Landroid/view/MotionEvent;I)V

    .line 1126
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendMouseEventCode(Landroid/view/MotionEvent;I)V

    .line 1129
    :cond_1c
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->requestFocus()Z

    goto :goto_d
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x1

    .line 1456
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    if-nez v0, :cond_8

    .line 1458
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 1468
    :goto_7
    return-void

    .line 1462
    :cond_8
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKnownSize:Z

    if-nez v0, :cond_12

    .line 1463
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKnownSize:Z

    .line 1464
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->initialize()V

    goto :goto_7

    .line 1466
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1223
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-eqz v0, :cond_9

    .line 1224
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/EmulatorView;->onTouchEventWhileSelectingText(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1226
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public page(I)V
    .registers 6
    .param p1, "delta"    # I

    .prologue
    .line 1046
    const/4 v0, 0x0

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mEmulator:Ljackpal/androidterm/emulatorview/TerminalEmulator;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TerminalEmulator;->getScreen()Ljackpal/androidterm/emulatorview/TranscriptScreen;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mRows:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1049
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1050
    return-void
.end method

.method public pageHorizontal(I)V
    .registers 6
    .param p1, "deltaColumns"    # I

    .prologue
    .line 1059
    const/4 v0, 0x0

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    add-int/2addr v1, p1

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColumns:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleColumns:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 1062
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1063
    return-void
.end method

.method public sendControlKey()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1620
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 1621
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1622
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1623
    return-void
.end method

.method public sendFnKey()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1630
    iput-boolean v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 1631
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1632
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->invalidate()V

    .line 1633
    return-void
.end method

.method public setAltSendsEsc(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 1649
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->setAltSendsEsc(Z)V

    .line 1650
    return-void
.end method

.method public setBackKeyCharacter(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1639
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->setBackKeyCharacter(I)V

    .line 1640
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 1641
    return-void

    .line 1640
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 3
    .param p1, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    .line 616
    if-nez p1, :cond_a

    .line 617
    sget-object v0, Ljackpal/androidterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    .line 621
    :goto_6
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateText()V

    .line 622
    return-void

    .line 619
    :cond_a
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mColorScheme:Ljackpal/androidterm/emulatorview/ColorScheme;

    goto :goto_6
.end method

.method public setControlKeyCode(I)V
    .registers 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1656
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mControlKeyCode:I

    .line 1657
    return-void
.end method

.method public setDensity(Landroid/util/DisplayMetrics;)V
    .registers 4
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 574
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    .line 576
    iget v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 578
    :cond_10
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDensity:F

    .line 579
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mScaledDensity:F

    .line 580
    return-void
.end method

.method public setExtGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 946
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 947
    return-void
.end method

.method public setFnKeyCode(I)V
    .registers 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1663
    iput p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mFnKeyCode:I

    .line 1664
    return-void
.end method

.method public setMouseTracking(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 1674
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mMouseTracking:Z

    .line 1675
    return-void
.end method

.method public setTermType(Ljava/lang/String;)V
    .registers 3
    .param p1, "termType"    # Ljava/lang/String;

    .prologue
    .line 1667
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKeyListener:Ljackpal/androidterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->setTermType(Ljava/lang/String;)V

    .line 1668
    return-void
.end method

.method public setTextSize(I)V
    .registers 4
    .param p1, "fontSize"    # I

    .prologue
    .line 1071
    int-to-float v0, p1

    iget v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mTextSize:I

    .line 1072
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateText()V

    .line 1073
    return-void
.end method

.method public setUseCookedIME(Z)V
    .registers 2
    .param p1, "useCookedIME"    # Z

    .prologue
    .line 1081
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mUseCookedIme:Z

    .line 1082
    return-void
.end method

.method public toggleSelectingText()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1590
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-nez v0, :cond_1e

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 1591
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-nez v0, :cond_20

    :goto_e
    invoke-virtual {p0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->setVerticalScrollBarEnabled(Z)V

    .line 1592
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-nez v0, :cond_1d

    .line 1593
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX1:I

    .line 1594
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY1:I

    .line 1595
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelX2:I

    .line 1596
    iput v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mSelY2:I

    .line 1598
    :cond_1d
    return-void

    :cond_1e
    move v0, v2

    .line 1590
    goto :goto_8

    :cond_20
    move v1, v2

    .line 1591
    goto :goto_e
.end method

.method public updateSize(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 1494
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mLinkLayer:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 1495
    iget-boolean v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mKnownSize:Z

    if-eqz v2, :cond_26

    .line 1496
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getWidth()I

    move-result v1

    .line 1497
    .local v1, "w":I
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/EmulatorView;->getHeight()I

    move-result v0

    .line 1499
    .local v0, "h":I
    if-nez p1, :cond_1b

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    if-ne v1, v2, :cond_1b

    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    if-eq v0, v2, :cond_26

    .line 1500
    :cond_1b
    iput v1, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    .line 1501
    iput v0, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    .line 1502
    iget v2, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleWidth:I

    iget v3, p0, Ljackpal/androidterm/emulatorview/EmulatorView;->mVisibleHeight:I

    invoke-direct {p0, v2, v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(II)V

    .line 1505
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_26
    return-void
.end method
