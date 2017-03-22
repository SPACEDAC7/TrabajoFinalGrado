.class public Lhecticman/jsterm/emulatorview/EmulatorView;
.super Landroid/view/View;
.source "EmulatorView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final CURSOR_BLINK_PERIOD:I = 0x3e8

.field private static final SELECT_TEXT_OFFSET_Y:I = -0x28


# instance fields
.field private final LOG_IME:Z

.field private final LOG_KEY_EVENTS:Z

.field private final TAG:Ljava/lang/String;

.field private mBackKeySendsCharacter:Z

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBlinkCursor:Ljava/lang/Runnable;

.field private mCharacterHeight:I

.field private mCharacterWidth:F

.field private mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

.field private mColumns:I

.field private mControlKeyCode:I

.field private mCursorBlink:I

.field private mCursorPaint:Landroid/graphics/Paint;

.field private mCursorStyle:I

.field private mCursorVisible:Z

.field private mDeferInit:Z

.field private mDensity:F

.field private mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

.field private mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFnKeyCode:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mImeBuffer:Ljava/lang/String;

.field private mIsActive:Z

.field private mIsControlKeySent:Z

.field private mIsFnKeySent:Z

.field private mIsSelectingText:Z

.field private mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

.field private mKnownSize:Z

.field private mLeftColumn:I

.field private mRows:I

.field private mScaledDensity:F

.field private mScrollRemainder:F

.field private mSelX1:I

.field private mSelX2:I

.field private mSelXAnchor:I

.field private mSelY1:I

.field private mSelY2:I

.field private mSelYAnchor:I

.field private mTermSession:Lhecticman/jsterm/emulatorview/TermSession;

.field private mTextRenderer:Lhecticman/jsterm/emulatorview/TextRenderer;

.field private mTextSize:I

.field private mTopOfScreenMargin:I

.field private mTopRow:I

.field private mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

.field private mUpdateNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

.field private mUseCookedIme:Z

.field private mVisibleColumns:I

.field private mVisibleHeight:I

.field private mVisibleWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const-string v0, "EmulatorView"

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->TAG:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->LOG_KEY_EVENTS:Z

    .line 70
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->LOG_IME:Z

    .line 79
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 114
    const/16 v0, 0xa

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    .line 122
    sget-object v0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 165
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 167
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 170
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 171
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 178
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 179
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 180
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    .line 181
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    .line 182
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX2:I

    .line 183
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    .line 185
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 187
    new-instance v0, Lhecticman/jsterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/EmulatorView$1;-><init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lhecticman/jsterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/EmulatorView$2;-><init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mUpdateNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 263
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const-string v0, "EmulatorView"

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->TAG:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->LOG_KEY_EVENTS:Z

    .line 70
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->LOG_IME:Z

    .line 79
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 114
    const/16 v0, 0xa

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    .line 122
    sget-object v0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 165
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 167
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 170
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 171
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 178
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 179
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 180
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    .line 181
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    .line 182
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX2:I

    .line 183
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    .line 185
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 187
    new-instance v0, Lhecticman/jsterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/EmulatorView$1;-><init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lhecticman/jsterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/EmulatorView$2;-><init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mUpdateNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhecticman/jsterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lhecticman/jsterm/emulatorview/TermSession;
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v0, "EmulatorView"

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->TAG:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->LOG_KEY_EVENTS:Z

    .line 70
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->LOG_IME:Z

    .line 79
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 114
    const/16 v0, 0xa

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    .line 122
    sget-object v0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorVisible:Z

    .line 165
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 167
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 170
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 171
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 178
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 179
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 180
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    .line 181
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    .line 182
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX2:I

    .line 183
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    .line 185
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 187
    new-instance v0, Lhecticman/jsterm/emulatorview/EmulatorView$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/EmulatorView$1;-><init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lhecticman/jsterm/emulatorview/EmulatorView$2;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/EmulatorView$2;-><init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mUpdateNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    .line 239
    invoke-virtual {p0, p2}, Lhecticman/jsterm/emulatorview/EmulatorView;->attachSession(Lhecticman/jsterm/emulatorview/TermSession;)V

    .line 240
    invoke-virtual {p0, p3}, Lhecticman/jsterm/emulatorview/EmulatorView;->setDensity(Landroid/util/DisplayMetrics;)V

    .line 241
    return-void
.end method

.method static synthetic access$0(Lhecticman/jsterm/emulatorview/EmulatorView;)I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorBlink:I

    return v0
.end method

.method static synthetic access$1(Lhecticman/jsterm/emulatorview/EmulatorView;)Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorVisible:Z

    return v0
.end method

.method static synthetic access$10(Lhecticman/jsterm/emulatorview/EmulatorView;)I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I

    return v0
.end method

.method static synthetic access$11(Lhecticman/jsterm/emulatorview/EmulatorView;I)V
    .registers 2

    .prologue
    .line 179
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I

    return-void
.end method

.method static synthetic access$12(Lhecticman/jsterm/emulatorview/EmulatorView;)V
    .registers 1

    .prologue
    .line 1173
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->ensureCursorVisible()V

    return-void
.end method

.method static synthetic access$13(Lhecticman/jsterm/emulatorview/EmulatorView;)Lhecticman/jsterm/emulatorview/TermKeyListener;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    return-object v0
.end method

.method static synthetic access$14(Lhecticman/jsterm/emulatorview/EmulatorView;)Lhecticman/jsterm/emulatorview/TermSession;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTermSession:Lhecticman/jsterm/emulatorview/TermSession;

    return-object v0
.end method

.method static synthetic access$15(Lhecticman/jsterm/emulatorview/EmulatorView;)V
    .registers 1

    .prologue
    .line 1047
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V

    return-void
.end method

.method static synthetic access$16(Lhecticman/jsterm/emulatorview/EmulatorView;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/EmulatorView;->setImeBuffer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lhecticman/jsterm/emulatorview/EmulatorView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lhecticman/jsterm/emulatorview/EmulatorView;Z)V
    .registers 2

    .prologue
    .line 163
    iput-boolean p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorVisible:Z

    return-void
.end method

.method static synthetic access$3(Lhecticman/jsterm/emulatorview/EmulatorView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lhecticman/jsterm/emulatorview/EmulatorView;)Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    return v0
.end method

.method static synthetic access$5(Lhecticman/jsterm/emulatorview/EmulatorView;)Lhecticman/jsterm/emulatorview/TerminalEmulator;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    return-object v0
.end method

.method static synthetic access$6(Lhecticman/jsterm/emulatorview/EmulatorView;)I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    return v0
.end method

.method static synthetic access$7(Lhecticman/jsterm/emulatorview/EmulatorView;I)V
    .registers 2

    .prologue
    .line 181
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    return-void
.end method

.method static synthetic access$8(Lhecticman/jsterm/emulatorview/EmulatorView;)I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    return v0
.end method

.method static synthetic access$9(Lhecticman/jsterm/emulatorview/EmulatorView;I)V
    .registers 2

    .prologue
    .line 183
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    return-void
.end method

.method private clearSpecialKeyStatus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1048
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    if-eqz v0, :cond_c

    .line 1049
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 1050
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1052
    :cond_c
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    if-eqz v0, :cond_17

    .line 1053
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 1054
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1056
    :cond_17
    return-void
.end method

.method private ensureCursorVisible()V
    .registers 5

    .prologue
    .line 1174
    const/4 v2, 0x0

    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1175
    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleColumns:I

    if-lez v2, :cond_1b

    .line 1176
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v0

    .line 1177
    .local v0, "cx":I
    iget-object v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v2

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mLeftColumn:I

    sub-int v1, v2, v3

    .line 1178
    .local v1, "visibleCursorX":I
    if-gez v1, :cond_1c

    .line 1179
    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 1184
    .end local v0    # "cx":I
    .end local v1    # "visibleCursorX":I
    :cond_1b
    :goto_1b
    return-void

    .line 1180
    .restart local v0    # "cx":I
    .restart local v1    # "visibleCursorX":I
    :cond_1c
    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleColumns:I

    if-lt v1, v2, :cond_1b

    .line 1181
    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleColumns:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mLeftColumn:I

    goto :goto_1b
.end method

.method private handleControlKey(IZ)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 1022
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mControlKeyCode:I

    if-ne p1, v0, :cond_b

    .line 1026
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p2}, Lhecticman/jsterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1027
    const/4 v0, 0x1

    .line 1029
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private handleFnKey(IZ)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    .line 1033
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mFnKeyCode:I

    if-ne p1, v0, :cond_b

    .line 1037
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p2}, Lhecticman/jsterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1038
    const/4 v0, 0x1

    .line 1040
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 716
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTermSession:Lhecticman/jsterm/emulatorview/TermSession;

    .line 718
    .local v0, "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateText()V

    .line 720
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TermSession;->getTranscriptScreen()Lhecticman/jsterm/emulatorview/TranscriptScreen;

    move-result-object v1

    iput-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    .line 721
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TermSession;->getEmulator()Lhecticman/jsterm/emulatorview/TerminalEmulator;

    move-result-object v1

    iput-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    .line 722
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mUpdateNotify:Lhecticman/jsterm/emulatorview/UpdateCallback;

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/TermSession;->setUpdateCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 724
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->requestFocus()Z

    .line 725
    return-void
.end method

.method private isInterceptedSystemKey(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 989
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

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
    .line 1044
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    return v0
.end method

.method private onTouchEventWhileSelectingText(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 913
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v8, v9

    float-to-int v2, v8

    .line 914
    .local v2, "cx":I
    const/4 v8, 0x0

    .line 915
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    const/high16 v10, -0x3de00000

    iget v11, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mScaledDensity:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 916
    iget v10, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v10, v10

    .line 915
    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 916
    iget v10, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .line 915
    add-int/2addr v9, v10

    .line 914
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 917
    .local v3, "cy":I
    packed-switch v0, :pswitch_data_84

    .line 946
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->toggleSelectingText()V

    .line 947
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 950
    :goto_2d
    return v12

    .line 919
    :pswitch_2e
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelXAnchor:I

    .line 920
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I

    .line 921
    iput v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    .line 922
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    .line 923
    iget v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    iput v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX2:I

    .line 924
    iget v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    iput v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    goto :goto_2d

    .line 928
    :pswitch_3f
    iget v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelXAnchor:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 929
    .local v6, "minx":I
    iget v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelXAnchor:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 930
    .local v4, "maxx":I
    iget v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 931
    .local v7, "miny":I
    iget v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelYAnchor:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 932
    .local v5, "maxy":I
    iput v6, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    .line 933
    iput v7, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    .line 934
    iput v4, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX2:I

    .line 935
    iput v5, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    .line 936
    if-ne v0, v12, :cond_7f

    .line 938
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 939
    const-string v9, "clipboard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 937
    check-cast v1, Landroid/text/ClipboardManager;

    .line 940
    .local v1, "clip":Landroid/text/ClipboardManager;
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->getSelectedText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 941
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->toggleSelectingText()V

    .line 943
    .end local v1    # "clip":Landroid/text/ClipboardManager;
    :cond_7f
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    goto :goto_2d

    .line 917
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method private setImeBuffer(Ljava/lang/String;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 656
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 657
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 659
    :cond_b
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    .line 660
    return-void
.end method

.method private updateSize(II)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1095
    int-to-float v0, p1

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColumns:I

    .line 1096
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleWidth:I

    int-to-float v0, v0

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleColumns:I

    .line 1098
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextRenderer:Lhecticman/jsterm/emulatorview/TextRenderer;

    invoke-interface {v0}, Lhecticman/jsterm/emulatorview/TextRenderer;->getTopMargin()I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    .line 1099
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    sub-int v0, p2, v0

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterHeight:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mRows:I

    .line 1100
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTermSession:Lhecticman/jsterm/emulatorview/TermSession;

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColumns:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mRows:I

    invoke-virtual {v0, v1, v2}, Lhecticman/jsterm/emulatorview/TermSession;->updateSize(II)V

    .line 1103
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .line 1104
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 1106
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 1107
    return-void
.end method

.method private updateText()V
    .registers 4

    .prologue
    .line 1059
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 1060
    .local v0, "scheme":Lhecticman/jsterm/emulatorview/ColorScheme;
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    if-lez v1, :cond_2d

    .line 1061
    new-instance v1, Lhecticman/jsterm/emulatorview/PaintRenderer;

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    invoke-direct {v1, v2, v0}, Lhecticman/jsterm/emulatorview/PaintRenderer;-><init>(ILhecticman/jsterm/emulatorview/ColorScheme;)V

    iput-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextRenderer:Lhecticman/jsterm/emulatorview/TextRenderer;

    .line 1066
    :goto_f
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/ColorScheme;->getBackColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1067
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextRenderer:Lhecticman/jsterm/emulatorview/TextRenderer;

    invoke-interface {v1}, Lhecticman/jsterm/emulatorview/TextRenderer;->getCharacterWidth()F

    move-result v1

    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterWidth:F

    .line 1068
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextRenderer:Lhecticman/jsterm/emulatorview/TextRenderer;

    invoke-interface {v1}, Lhecticman/jsterm/emulatorview/TextRenderer;->getCharacterHeight()I

    move-result v1

    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterHeight:I

    .line 1070
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 1071
    return-void

    .line 1064
    :cond_2d
    new-instance v1, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;

    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lhecticman/jsterm/emulatorview/Bitmap4x8FontRenderer;-><init>(Landroid/content/res/Resources;Lhecticman/jsterm/emulatorview/ColorScheme;)V

    iput-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextRenderer:Lhecticman/jsterm/emulatorview/TextRenderer;

    goto :goto_f
.end method


# virtual methods
.method public attachSession(Lhecticman/jsterm/emulatorview/TermSession;)V
    .registers 7
    .param p1, "session"    # Lhecticman/jsterm/emulatorview/TermSession;

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextRenderer:Lhecticman/jsterm/emulatorview/TextRenderer;

    .line 273
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorPaint:Landroid/graphics/Paint;

    .line 274
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 275
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 276
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .line 277
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 278
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 280
    invoke-virtual {p0, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->setVerticalScrollBarEnabled(Z)V

    .line 281
    invoke-virtual {p0, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->setFocusable(Z)V

    .line 282
    invoke-virtual {p0, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->setFocusableInTouchMode(Z)V

    .line 284
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTermSession:Lhecticman/jsterm/emulatorview/TermSession;

    .line 286
    new-instance v0, Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-direct {v0, p1}, Lhecticman/jsterm/emulatorview/TermKeyListener;-><init>(Lhecticman/jsterm/emulatorview/TermSession;)V

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    .line 289
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDeferInit:Z

    if-eqz v0, :cond_44

    .line 290
    iput-boolean v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 291
    iput-boolean v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKnownSize:Z

    .line 292
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->initialize()V

    .line 294
    :cond_44
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 699
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mRows:I

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 709
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->getActiveRows()I

    move-result v0

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    add-int/2addr v0, v1

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mRows:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 689
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->getActiveRows()I

    move-result v0

    return v0
.end method

.method public getKeypadApplicationMode()Z
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getKeypadApplicationMode()Z

    move-result v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1213
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX2:I

    iget v4, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectingText()Z
    .registers 2

    .prologue
    .line 1204
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    return v0
.end method

.method public getTermSession()Lhecticman/jsterm/emulatorview/TermSession;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTermSession:Lhecticman/jsterm/emulatorview/TermSession;

    return-object v0
.end method

.method public getVisibleHeight()I
    .registers 2

    .prologue
    .line 751
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleHeight:I

    return v0
.end method

.method public getVisibleWidth()I
    .registers 2

    .prologue
    .line 742
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleWidth:I

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 356
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mUseCookedIme:Z

    if-eqz v0, :cond_d

    .line 357
    const/4 v0, 0x1

    .line 356
    :goto_5
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 359
    new-instance v0, Lhecticman/jsterm/emulatorview/EmulatorView$3;

    invoke-direct {v0, p0}, Lhecticman/jsterm/emulatorview/EmulatorView$3;-><init>(Lhecticman/jsterm/emulatorview/EmulatorView;)V

    return-object v0

    .line 358
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 892
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 896
    :goto_d
    return v1

    .line 895
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mScrollRemainder:F

    goto :goto_d
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 1137
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    if-nez v0, :cond_9

    .line 1171
    :cond_8
    return-void

    .line 1142
    :cond_9
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->getWidth()I

    move-result v14

    .line 1143
    .local v14, "w":I
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->getHeight()I

    move-result v13

    .line 1145
    .local v13, "h":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v14

    int-to-float v4, v13

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1146
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mLeftColumn:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterWidth:F

    mul-float v3, v0, v2

    .line 1147
    .local v3, "x":F
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterHeight:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopOfScreenMargin:I

    add-int/2addr v0, v2

    int-to-float v4, v0

    .line 1148
    .local v4, "y":F
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mRows:I

    add-int v12, v0, v2

    .line 1149
    .local v12, "endLine":I
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getCursorCol()I

    move-result v10

    .line 1150
    .local v10, "cx":I
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mEmulator:Lhecticman/jsterm/emulatorview/TerminalEmulator;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TerminalEmulator;->getCursorRow()I

    move-result v11

    .line 1151
    .local v11, "cy":I
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .local v1, "i":I
    :goto_3e
    if-ge v1, v12, :cond_8

    .line 1152
    const/4 v6, -0x1

    .line 1153
    .local v6, "cursorX":I
    if-ne v1, v11, :cond_48

    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorVisible:Z

    if-eqz v0, :cond_48

    .line 1154
    move v6, v10

    .line 1156
    :cond_48
    const/4 v7, -0x1

    .line 1157
    .local v7, "selx1":I
    const/4 v8, -0x1

    .line 1158
    .local v8, "selx2":I
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    if-lt v1, v0, :cond_5e

    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    if-gt v1, v0, :cond_5e

    .line 1159
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    if-ne v1, v0, :cond_58

    .line 1160
    iget v7, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    .line 1162
    :cond_58
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    if-ne v1, v0, :cond_70

    .line 1163
    iget v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX2:I

    .line 1168
    :cond_5e
    :goto_5e
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    iget-object v5, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextRenderer:Lhecticman/jsterm/emulatorview/TextRenderer;

    iget-object v9, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mImeBuffer:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v9}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->drawText(ILandroid/graphics/Canvas;FFLhecticman/jsterm/emulatorview/TextRenderer;IIILjava/lang/String;)V

    .line 1169
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v0, v0

    add-float/2addr v4, v0

    .line 1151
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1165
    :cond_70
    iget v8, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColumns:I

    goto :goto_5e
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 876
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 882
    :goto_d
    return v2

    .line 880
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mScrollRemainder:F

    .line 881
    const v0, 0x3dcccccd

    mul-float/2addr v0, p3

    const v1, -0x42333333

    mul-float/2addr v1, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto :goto_d
.end method

.method public onJumpTapDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 862
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .line 863
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 864
    const/4 v0, 0x1

    return v0
.end method

.method public onJumpTapUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 869
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .line 870
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 966
    invoke-direct {p0, p1, v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->handleControlKey(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 984
    :cond_7
    :goto_7
    return v0

    .line 968
    :cond_8
    invoke-direct {p0, p1, v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->handleFnKey(IZ)Z

    move-result v1

    if-nez v1, :cond_7

    .line 970
    invoke-direct {p0, p1, p2}, Lhecticman/jsterm/emulatorview/EmulatorView;->isSystemKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 971
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/EmulatorView;->isInterceptedSystemKey(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 973
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 980
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->getKeypadApplicationMode()Z

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lhecticman/jsterm/emulatorview/TermKeyListener;->keyDown(ILandroid/view/KeyEvent;Z)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_29

    goto :goto_7

    .line 981
    :catch_29
    move-exception v1

    goto :goto_7
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1004
    invoke-direct {p0, p1, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->handleControlKey(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1017
    :cond_8
    :goto_8
    return v0

    .line 1006
    :cond_9
    invoke-direct {p0, p1, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->handleFnKey(IZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1008
    invoke-direct {p0, p1, p2}, Lhecticman/jsterm/emulatorview/EmulatorView;->isSystemKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1010
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/EmulatorView;->isInterceptedSystemKey(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1011
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8

    .line 1015
    :cond_20
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {v1, p1, p2}, Lhecticman/jsterm/emulatorview/TermKeyListener;->keyUp(ILandroid/view/KeyEvent;)V

    .line 1016
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->clearSpecialKeyStatus()V

    goto :goto_8
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 838
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->showContextMenu()Z

    .line 839
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 325
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-eqz v0, :cond_b

    .line 326
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 329
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsActive:Z

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 316
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-eqz v0, :cond_14

    .line 317
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    :cond_14
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

    .line 843
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 854
    :goto_d
    return v4

    .line 846
    :cond_e
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mScrollRemainder:F

    add-float/2addr p4, v1

    .line 847
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterHeight:I

    int-to-float v1, v1

    div-float v1, p4, v1

    float-to-int v0, v1

    .line 848
    .local v0, "deltaRows":I
    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCharacterHeight:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    sub-float v1, p4, v1

    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mScrollRemainder:F

    .line 850
    const/4 v1, 0x0

    iget-object v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    .line 851
    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v2

    neg-int v2, v2

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    add-int/2addr v3, v0

    .line 850
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 849
    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .line 852
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    goto :goto_d
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 886
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_9

    .line 887
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 889
    :cond_9
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 858
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 829
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 833
    :goto_d
    return v1

    .line 832
    :cond_e
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->requestFocus()Z

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

    .line 1080
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTermSession:Lhecticman/jsterm/emulatorview/TermSession;

    if-nez v0, :cond_8

    .line 1082
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDeferInit:Z

    .line 1092
    :goto_7
    return-void

    .line 1086
    :cond_8
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKnownSize:Z

    if-nez v0, :cond_12

    .line 1087
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKnownSize:Z

    .line 1088
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->initialize()V

    goto :goto_7

    .line 1090
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateSize(Z)V

    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 903
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-eqz v0, :cond_9

    .line 904
    invoke-direct {p0, p1}, Lhecticman/jsterm/emulatorview/EmulatorView;->onTouchEventWhileSelectingText(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 906
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public page(I)V
    .registers 6
    .param p1, "delta"    # I

    .prologue
    .line 762
    const/4 v0, 0x0

    .line 763
    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTranscriptScreen:Lhecticman/jsterm/emulatorview/TranscriptScreen;

    .line 764
    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/TranscriptScreen;->getActiveTranscriptRows()I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mRows:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    .line 763
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 762
    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTopRow:I

    .line 765
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 766
    return-void
.end method

.method public pageHorizontal(I)V
    .registers 6
    .param p1, "deltaColumns"    # I

    .prologue
    .line 775
    .line 776
    const/4 v0, 0x0

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mLeftColumn:I

    add-int/2addr v1, p1

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColumns:I

    .line 777
    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleColumns:I

    sub-int/2addr v2, v3

    .line 776
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 775
    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mLeftColumn:I

    .line 778
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->invalidate()V

    .line 779
    return-void
.end method

.method public sendControlKey()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1220
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsControlKeySent:Z

    .line 1221
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/TermKeyListener;->handleControlKey(Z)V

    .line 1222
    return-void
.end method

.method public sendFnKey()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1229
    iput-boolean v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsFnKeySent:Z

    .line 1230
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/TermKeyListener;->handleFnKey(Z)V

    .line 1231
    return-void
.end method

.method public setBackKeyCharacter(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1237
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKeyListener:Lhecticman/jsterm/emulatorview/TermKeyListener;

    invoke-virtual {v0, p1}, Lhecticman/jsterm/emulatorview/TermKeyListener;->setBackKeyCharacter(I)V

    .line 1238
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBackKeySendsCharacter:Z

    .line 1239
    return-void

    .line 1238
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 3
    .param p1, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    .line 340
    if-nez p1, :cond_a

    .line 341
    sget-object v0, Lhecticman/jsterm/emulatorview/BaseTextRenderer;->defaultColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    iput-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    .line 345
    :goto_6
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateText()V

    .line 346
    return-void

    .line 343
    :cond_a
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mColorScheme:Lhecticman/jsterm/emulatorview/ColorScheme;

    goto :goto_6
.end method

.method public setControlKeyCode(I)V
    .registers 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1245
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mControlKeyCode:I

    .line 1246
    return-void
.end method

.method public setCursorStyle(II)V
    .registers 7
    .param p1, "style"    # I
    .param p2, "blink"    # I

    .prologue
    .line 808
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorStyle:I

    .line 809
    if-eqz p2, :cond_14

    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-nez v0, :cond_14

    .line 810
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 814
    :cond_11
    :goto_11
    iput p2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorBlink:I

    .line 815
    return-void

    .line 811
    :cond_14
    if-nez p2, :cond_11

    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mCursorBlink:I

    if-eqz v0, :cond_11

    .line 812
    iget-object v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mBlinkCursor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public setDensity(Landroid/util/DisplayMetrics;)V
    .registers 4
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 302
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    .line 304
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    .line 306
    :cond_10
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDensity:F

    .line 307
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mScaledDensity:F

    .line 308
    return-void
.end method

.method public setExtGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 681
    iput-object p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mExtGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 682
    return-void
.end method

.method public setFnKeyCode(I)V
    .registers 2
    .param p1, "keyCode"    # I

    .prologue
    .line 1252
    iput p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mFnKeyCode:I

    .line 1253
    return-void
.end method

.method public setTextSize(I)V
    .registers 4
    .param p1, "fontSize"    # I

    .prologue
    .line 787
    int-to-float v0, p1

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    .line 788
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateText()V

    .line 789
    return-void
.end method

.method public setTextSize(Z)V
    .registers 4
    .param p1, "zoomin"    # Z

    .prologue
    .line 792
    if-eqz p1, :cond_f

    .line 793
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    int-to-float v0, v0

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDensity:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    .line 798
    :goto_b
    invoke-direct {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateText()V

    .line 799
    return-void

    .line 795
    :cond_f
    iget v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    int-to-float v0, v0

    iget v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mDensity:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mTextSize:I

    goto :goto_b
.end method

.method public setUseCookedIME(Z)V
    .registers 2
    .param p1, "useCookedIME"    # Z

    .prologue
    .line 823
    iput-boolean p1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mUseCookedIme:Z

    .line 824
    return-void
.end method

.method public toggleSelectingText()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 1190
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    .line 1191
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-eqz v0, :cond_20

    :goto_e
    invoke-virtual {p0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->setVerticalScrollBarEnabled(Z)V

    .line 1192
    iget-boolean v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mIsSelectingText:Z

    if-nez v0, :cond_1d

    .line 1193
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX1:I

    .line 1194
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY1:I

    .line 1195
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelX2:I

    .line 1196
    iput v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mSelY2:I

    .line 1198
    :cond_1d
    return-void

    :cond_1e
    move v0, v2

    .line 1190
    goto :goto_8

    :cond_20
    move v1, v2

    .line 1191
    goto :goto_e
.end method

.method public updateSize(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 1116
    iget-boolean v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mKnownSize:Z

    if-eqz v2, :cond_21

    .line 1117
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->getWidth()I

    move-result v1

    .line 1118
    .local v1, "w":I
    invoke-virtual {p0}, Lhecticman/jsterm/emulatorview/EmulatorView;->getHeight()I

    move-result v0

    .line 1120
    .local v0, "h":I
    if-nez p1, :cond_16

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleWidth:I

    if-ne v1, v2, :cond_16

    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleHeight:I

    if-eq v0, v2, :cond_21

    .line 1121
    :cond_16
    iput v1, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleWidth:I

    .line 1122
    iput v0, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleHeight:I

    .line 1123
    iget v2, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleWidth:I

    iget v3, p0, Lhecticman/jsterm/emulatorview/EmulatorView;->mVisibleHeight:I

    invoke-direct {p0, v2, v3}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateSize(II)V

    .line 1126
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_21
    return-void
.end method
