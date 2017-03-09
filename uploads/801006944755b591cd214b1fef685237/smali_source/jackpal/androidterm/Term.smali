.class public Ljackpal/androidterm/Term;
.super Landroid/app/Activity;
.source "Term.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/Term$EmulatorViewGestureListener;,
        Ljackpal/androidterm/Term$WindowListActionBarAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_PATH_BROADCAST:Ljava/lang/String; = "jackpal.androidterm.broadcast.APPEND_TO_PATH"

.field private static final ACTION_PATH_PREPEND_BROADCAST:Ljava/lang/String; = "jackpal.androidterm.broadcast.PREPEND_TO_PATH"

.field private static final COPY_ALL_ID:I = 0x1

.field public static final EXTRA_WINDOW_ID:Ljava/lang/String; = "jackpal.androidterm.window_id"

.field private static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field private static final PASTE_ID:I = 0x2

.field private static final PERMISSION_PATH_BROADCAST:Ljava/lang/String; = "jackpal.androidterm.permission.APPEND_TO_PATH"

.field private static final PERMISSION_PATH_PREPEND_BROADCAST:Ljava/lang/String; = "jackpal.androidterm.permission.PREPEND_TO_PATH"

.field public static final REQUEST_CHOOSE_WINDOW:I = 0x1

.field private static final SELECT_TEXT_ID:I = 0x0

.field private static final SEND_CONTROL_KEY_ID:I = 0x3

.field private static final SEND_FN_KEY_ID:I = 0x4

.field private static final VIEW_FLIPPER:I = 0x7f070004

.field private static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3


# instance fields
.field private TSIntent:Landroid/content/Intent;

.field private mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

.field private mActionBarMode:I

.field private mAlreadyStarted:Z

.field private mBackKeyPressed:Z

.field private mHandler:Landroid/os/Handler;

.field private mHaveFullHwKeyboard:Z

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field private mPathReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingPathBroadcasts:I

.field private mPrivateAlias:Landroid/content/ComponentName;

.field private mSettings:Ljackpal/androidterm/util/TermSettings;

.field private mStopServiceOnFinish:Z

.field private mTSConnection:Landroid/content/ServiceConnection;

.field private mTermService:Ljackpal/androidterm/TermService;

.field private mTermSessions:Ljackpal/androidterm/util/SessionList;

.field private mUseKeyboardShortcuts:Z

.field private mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

.field private mWinListItemSelected:Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;

.field private onResumeSelectWindow:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mAlreadyStarted:Z

    .line 105
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    .line 125
    iput v1, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    .line 126
    new-instance v0, Ljackpal/androidterm/Term$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/Term$1;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Ljackpal/androidterm/Term$2;

    invoke-direct {v0, p0}, Ljackpal/androidterm/Term$2;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    .line 163
    iput v1, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    .line 204
    new-instance v0, Ljackpal/androidterm/Term$3;

    invoke-direct {v0, p0}, Ljackpal/androidterm/Term$3;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mWinListItemSelected:Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;

    .line 220
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    .line 271
    new-instance v0, Ljackpal/androidterm/Term$4;

    invoke-direct {v0, p0}, Ljackpal/androidterm/Term$4;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 325
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/Term;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/Term;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/Term;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljackpal/androidterm/Term;->makePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljackpal/androidterm/Term;)Ljackpal/androidterm/util/TermSettings;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    return-object v0
.end method

.method static synthetic access$1000(Ljackpal/androidterm/Term;)I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget v0, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    return v0
.end method

.method static synthetic access$1100(Ljackpal/androidterm/Term;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljackpal/androidterm/Term;->execURL(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Ljackpal/androidterm/Term;IIII)V
    .registers 5
    .param p0, "x0"    # Ljackpal/androidterm/Term;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Ljackpal/androidterm/Term;->doUIToggle(IIII)V

    return-void
.end method

.method static synthetic access$1300(Ljackpal/androidterm/Term;)Z
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mUseKeyboardShortcuts:Z

    return v0
.end method

.method static synthetic access$1400(Ljackpal/androidterm/Term;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCreateNewWindow()V

    return-void
.end method

.method static synthetic access$1500(Ljackpal/androidterm/Term;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doPaste()V

    return-void
.end method

.method static synthetic access$1600(Ljackpal/androidterm/Term;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCloseWindow()V

    return-void
.end method

.method static synthetic access$1700(Ljackpal/androidterm/Term;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget-object v0, p0, Ljackpal/androidterm/Term;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Ljackpal/androidterm/Term;)I
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget v0, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    return v0
.end method

.method static synthetic access$210(Ljackpal/androidterm/Term;)I
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget v0, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    return v0
.end method

.method static synthetic access$300(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermService;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    return-object v0
.end method

.method static synthetic access$302(Ljackpal/androidterm/Term;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;
    .param p1, "x1"    # Ljackpal/androidterm/TermService;

    .prologue
    .line 83
    iput-object p1, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    return-object p1
.end method

.method static synthetic access$400(Ljackpal/androidterm/Term;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    invoke-direct {p0}, Ljackpal/androidterm/Term;->populateViewFlipper()V

    return-void
.end method

.method static synthetic access$500(Ljackpal/androidterm/Term;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    invoke-direct {p0}, Ljackpal/androidterm/Term;->populateWindowList()V

    return-void
.end method

.method static synthetic access$600(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    return-object v0
.end method

.method static synthetic access$700(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/ActionBarCompat;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    return-object v0
.end method

.method static synthetic access$800(Ljackpal/androidterm/Term;)Ljackpal/androidterm/util/SessionList;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/Term;

    .prologue
    .line 83
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    return-object v0
.end method

.method static synthetic access$900(Ljackpal/androidterm/Term;Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;
    .registers 3
    .param p0, "x0"    # Ljackpal/androidterm/Term;
    .param p1, "x1"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljackpal/androidterm/Term;->createEmulatorView(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;

    move-result-object v0

    return-object v0
.end method

.method private canPaste()Z
    .registers 3

    .prologue
    .line 960
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatFactory;->getManager(Landroid/content/Context;)Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;

    move-result-object v0

    .line 962
    .local v0, "clip":Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;
    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;->hasText()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 963
    const/4 v1, 0x1

    .line 965
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private checkHaveFullHwKeyboard(Landroid/content/res/Configuration;)Z
    .registers 5
    .param p1, "c"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 648
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private confirmCloseWindow()V
    .registers 5

    .prologue
    .line 737
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 738
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 739
    const v2, 0x7f090018

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 740
    new-instance v1, Ljackpal/androidterm/Term$6;

    invoke-direct {v1, p0}, Ljackpal/androidterm/Term$6;-><init>(Ljackpal/androidterm/Term;)V

    .line 745
    .local v1, "closeWindow":Ljava/lang/Runnable;
    const v2, 0x1040013

    new-instance v3, Ljackpal/androidterm/Term$7;

    invoke-direct {v3, p0, v1}, Ljackpal/androidterm/Term$7;-><init>(Ljackpal/androidterm/Term;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 751
    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 752
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 753
    return-void
.end method

.method private createEmulatorView(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;
    .registers 5
    .param p1, "session"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 525
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 526
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 527
    new-instance v0, Ljackpal/androidterm/TermView;

    invoke-direct {v0, p0, p1, v1}, Ljackpal/androidterm/TermView;-><init>(Landroid/content/Context;Ljackpal/androidterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V

    .line 529
    .local v0, "emulatorView":Ljackpal/androidterm/TermView;
    new-instance v2, Ljackpal/androidterm/Term$EmulatorViewGestureListener;

    invoke-direct {v2, p0, v0}, Ljackpal/androidterm/Term$EmulatorViewGestureListener;-><init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/emulatorview/EmulatorView;)V

    invoke-virtual {v0, v2}, Ljackpal/androidterm/TermView;->setExtGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 530
    iget-object v2, p0, Ljackpal/androidterm/Term;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Ljackpal/androidterm/TermView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 531
    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->registerForContextMenu(Landroid/view/View;)V

    .line 533
    return-object v0
.end method

.method private createTermSession()Ljackpal/androidterm/emulatorview/TermSession;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 519
    .local v1, "settings":Ljackpal/androidterm/util/TermSettings;
    invoke-virtual {v1}, Ljackpal/androidterm/util/TermSettings;->getInitialCommand()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljackpal/androidterm/Term;->createTermSession(Landroid/content/Context;Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 520
    .local v0, "session":Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    invoke-virtual {v0, v2}, Ljackpal/androidterm/emulatorview/TermSession;->setFinishCallback(Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;)V

    .line 521
    return-object v0
.end method

.method protected static createTermSession(Landroid/content/Context;Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)Ljackpal/androidterm/emulatorview/TermSession;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Ljackpal/androidterm/util/TermSettings;
    .param p2, "initialCommand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v0, Ljackpal/androidterm/ShellTermSession;

    invoke-direct {v0, p1, p2}, Ljackpal/androidterm/ShellTermSession;-><init>(Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)V

    .line 512
    .local v0, "session":Ljackpal/androidterm/GenericTermSession;
    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/GenericTermSession;->setProcessExitMessage(Ljava/lang/String;)V

    .line 514
    return-object v0
.end method

.method private doCloseWindow()V
    .registers 5

    .prologue
    .line 756
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-nez v2, :cond_5

    .line 771
    :cond_4
    :goto_4
    return-void

    .line 760
    :cond_5
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v1

    .line 761
    .local v1, "view":Ljackpal/androidterm/emulatorview/EmulatorView;
    if-eqz v1, :cond_4

    .line 764
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v2, v3}, Ljackpal/androidterm/util/SessionList;->remove(I)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 765
    .local v0, "session":Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->onPause()V

    .line 766
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->finish()V

    .line 767
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2, v1}, Ljackpal/androidterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    .line 768
    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 769
    iget-object v2, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2}, Ljackpal/androidterm/TermViewFlipper;->showNext()V

    goto :goto_4
.end method

.method private doCopyAll()V
    .registers 3

    .prologue
    .line 1010
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatFactory;->getManager(Landroid/content/Context;)Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;

    move-result-object v0

    .line 1012
    .local v0, "clip":Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermSession;->getTranscriptText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    return-void
.end method

.method private doCreateNewWindow()V
    .registers 6

    .prologue
    .line 716
    iget-object v3, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-nez v3, :cond_c

    .line 717
    const-string v3, "Term"

    const-string v4, "Couldn\'t create new window because mTermSessions == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_b
    return-void

    .line 722
    :cond_c
    :try_start_c
    invoke-direct {p0}, Ljackpal/androidterm/Term;->createTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v1

    .line 724
    .local v1, "session":Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v3, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v3, v1}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z

    .line 726
    invoke-direct {p0, v1}, Ljackpal/androidterm/Term;->createEmulatorView(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;

    move-result-object v2

    .line 727
    .local v2, "view":Ljackpal/androidterm/TermView;
    iget-object v3, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v2, v3}, Ljackpal/androidterm/TermView;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    .line 729
    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3, v2}, Ljackpal/androidterm/TermViewFlipper;->addView(Landroid/view/View;)V

    .line 730
    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v4, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v4}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_30} :catch_31

    goto :goto_b

    .line 731
    .end local v1    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    .end local v2    # "view":Ljackpal/androidterm/TermView;
    :catch_31
    move-exception v0

    .line 732
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Failed to create a session"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_b
.end method

.method private doDocumentKeys()V
    .registers 11

    .prologue
    const/4 v2, 0x7

    .line 1034
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1035
    .local v8, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1036
    .local v3, "r":Landroid/content/res/Resources;
    const v0, 0x7f09001d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1037
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v0}, Ljackpal/androidterm/util/TermSettings;->getControlKeyId()I

    move-result v1

    const/high16 v4, 0x7f050000

    const v5, 0x7f09001a

    const v6, 0x7f090019

    const-string v7, "CTRLKEY"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljackpal/androidterm/Term;->formatMessage(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v0}, Ljackpal/androidterm/util/TermSettings;->getFnKeyId()I

    move-result v1

    const v4, 0x7f050018

    const v5, 0x7f09001c

    const v6, 0x7f09001b

    const-string v7, "FNKEY"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljackpal/androidterm/Term;->formatMessage(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1047
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1048
    return-void
.end method

.method private doEmailTranscript()V
    .registers 10

    .prologue
    .line 980
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v3

    .line 981
    .local v3, "session":Ljackpal/androidterm/emulatorview/TermSession;
    if-eqz v3, :cond_6a

    .line 985
    const-string v0, "user@example.com"

    .line 986
    .local v0, "addr":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailto:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 990
    .local v2, "intent":Landroid/content/Intent;
    const v6, 0x7f090032

    invoke-virtual {p0, v6}, Ljackpal/androidterm/Term;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 991
    .local v4, "subject":Ljava/lang/String;
    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TermSession;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 992
    .local v5, "title":Ljava/lang/String;
    if-eqz v5, :cond_4a

    .line 993
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 995
    :cond_4a
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v3}, Ljackpal/androidterm/emulatorview/TermSession;->getTranscriptText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const v6, 0x7f090030

    :try_start_5f
    invoke-virtual {p0, v6}, Ljackpal/androidterm/Term;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5f .. :try_end_6a} :catch_6b

    .line 1007
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_6a
    :goto_6a
    return-void

    .line 1001
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "subject":Ljava/lang/String;
    .restart local v5    # "title":Ljava/lang/String;
    :catch_6b
    move-exception v1

    .line 1002
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v6, 0x7f090031

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_6a
.end method

.method private doPaste()V
    .registers 5

    .prologue
    .line 1016
    invoke-direct {p0}, Ljackpal/androidterm/Term;->canPaste()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1023
    :goto_6
    return-void

    .line 1019
    :cond_7
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatFactory;->getManager(Landroid/content/Context;)Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;

    move-result-object v0

    .line 1021
    .local v0, "clip":Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;
    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1022
    .local v1, "paste":Ljava/lang/CharSequence;
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljackpal/androidterm/emulatorview/TermSession;->write(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private doPreferences()V
    .registers 3

    .prologue
    .line 969
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljackpal/androidterm/TermPreferences;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 970
    return-void
.end method

.method private doResetTerminal()V
    .registers 2

    .prologue
    .line 973
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    .line 974
    .local v0, "session":Ljackpal/androidterm/emulatorview/TermSession;
    if-eqz v0, :cond_9

    .line 975
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermSession;->reset()V

    .line 977
    :cond_9
    return-void
.end method

.method private doSendControlKey()V
    .registers 2

    .prologue
    .line 1026
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendControlKey()V

    .line 1027
    return-void
.end method

.method private doSendFnKey()V
    .registers 2

    .prologue
    .line 1030
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->sendFnKey()V

    .line 1031
    return-void
.end method

.method private doToggleActionBar()V
    .registers 3

    .prologue
    .line 1090
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    .line 1091
    .local v0, "bar":Ljackpal/androidterm/compat/ActionBarCompat;
    if-nez v0, :cond_5

    .line 1099
    :goto_4
    return-void

    .line 1094
    :cond_5
    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1095
    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    goto :goto_4

    .line 1097
    :cond_f
    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->show()V

    goto :goto_4
.end method

.method private doToggleSoftKeyboard()V
    .registers 4

    .prologue
    .line 1065
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1067
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1069
    return-void
.end method

.method private doToggleWakeLock()V
    .registers 2

    .prologue
    .line 1072
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1073
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1077
    :goto_d
    invoke-static {p0}, Ljackpal/androidterm/compat/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 1078
    return-void

    .line 1075
    :cond_11
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_d
.end method

.method private doToggleWifiLock()V
    .registers 2

    .prologue
    .line 1081
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1082
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1086
    :goto_d
    invoke-static {p0}, Ljackpal/androidterm/compat/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 1087
    return-void

    .line 1084
    :cond_11
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_d
.end method

.method private doUIToggle(IIII)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1102
    iget v0, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    packed-switch v0, :pswitch_data_3c

    .line 1125
    :cond_5
    :goto_5
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/EmulatorView;->requestFocus()Z

    .line 1126
    :goto_c
    return-void

    .line 1104
    :pswitch_d
    sget v0, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1f

    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_1b

    div-int/lit8 v0, p4, 0x2

    if-ge p2, v0, :cond_1f

    .line 1105
    :cond_1b
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->openOptionsMenu()V

    goto :goto_c

    .line 1108
    :cond_1f
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1112
    :pswitch_23
    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_5

    .line 1113
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1117
    :pswitch_2b
    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_33

    div-int/lit8 v0, p4, 0x2

    if-ge p2, v0, :cond_37

    .line 1118
    :cond_33
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleActionBar()V

    goto :goto_c

    .line 1121
    :cond_37
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1102
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method private execURL(Ljava/lang/String;)V
    .registers 7
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 1135
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1136
    .local v3, "webLink":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1137
    .local v1, "openLink":Landroid/content/Intent;
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1138
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1139
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1d

    .line 1140
    invoke-virtual {p0, v1}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 1141
    :cond_1d
    return-void
.end method

.method private formatMessage(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "keyId"    # I
    .param p2, "disabledKeyId"    # I
    .param p3, "r"    # Landroid/content/res/Resources;
    .param p4, "arrayId"    # I
    .param p5, "enabledId"    # I
    .param p6, "disabledId"    # I
    .param p7, "regex"    # Ljava/lang/String;

    .prologue
    .line 1054
    if-ne p1, p2, :cond_7

    .line 1055
    invoke-virtual {p3, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1061
    :goto_6
    return-object v2

    .line 1057
    :cond_7
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, "keyNames":[Ljava/lang/String;
    aget-object v0, v1, p1

    .line 1059
    .local v0, "keyName":Ljava/lang/String;
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1060
    .local v3, "template":Ljava/lang/String;
    invoke-virtual {v3, p7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "result":Ljava/lang/String;
    goto :goto_6
.end method

.method private getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/EmulatorView;

    return-object v0
.end method

.method private getCurrentTermSession()Ljackpal/androidterm/emulatorview/TermSession;
    .registers 3

    .prologue
    .line 537
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    .line 538
    .local v0, "sessions":Ljackpal/androidterm/util/SessionList;
    if-nez v0, :cond_6

    .line 539
    const/4 v1, 0x0

    .line 541
    :goto_5
    return-object v1

    :cond_6
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/emulatorview/TermSession;

    goto :goto_5
.end method

.method private makePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 12
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 403
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v8

    if-nez v8, :cond_b

    .line 404
    :cond_8
    const-string v8, ""

    .line 421
    :goto_a
    return-object v8

    .line 407
    :cond_b
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 408
    .local v5, "keys":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "keys":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 409
    .restart local v5    # "keys":[Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    .line 410
    .local v1, "collator":Ljava/text/Collator;
    invoke-static {v5, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v7, "path":Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2c
    if-ge v3, v6, :cond_49

    aget-object v4, v0, v3

    .line 414
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "dir":Ljava/lang/String;
    if-eqz v2, :cond_46

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 416
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 421
    .end local v2    # "dir":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :cond_49
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_a
.end method

.method private populateViewFlipper()V
    .registers 7

    .prologue
    .line 434
    iget-object v4, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    if-eqz v4, :cond_4c

    .line 435
    iget-object v4, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    invoke-virtual {v4}, Ljackpal/androidterm/TermService;->getSessions()Ljackpal/androidterm/util/SessionList;

    move-result-object v4

    iput-object v4, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    .line 437
    iget-object v4, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v4}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v4

    if-nez v4, :cond_1d

    .line 439
    :try_start_14
    iget-object v4, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-direct {p0}, Ljackpal/androidterm/Term;->createTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_3e

    .line 447
    :cond_1d
    iget-object v4, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v4, p0}, Ljackpal/androidterm/util/SessionList;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 449
    iget-object v4, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v4}, Ljackpal/androidterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljackpal/androidterm/emulatorview/TermSession;

    .line 450
    .local v2, "session":Ljackpal/androidterm/emulatorview/TermSession;
    invoke-direct {p0, v2}, Ljackpal/androidterm/Term;->createEmulatorView(Ljackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/TermView;

    move-result-object v3

    .line 451
    .local v3, "view":Ljackpal/androidterm/emulatorview/EmulatorView;
    iget-object v4, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v4, v3}, Ljackpal/androidterm/TermViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_28

    .line 440
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    .end local v3    # "view":Ljackpal/androidterm/emulatorview/EmulatorView;
    :catch_3e
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Failed to start terminal session"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 442
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    .line 462
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4c
    :goto_4c
    return-void

    .line 454
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4d
    invoke-direct {p0}, Ljackpal/androidterm/Term;->updatePrefs()V

    .line 456
    iget v4, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    if-ltz v4, :cond_5e

    .line 457
    iget-object v4, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget v5, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    invoke-virtual {v4, v5}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    .line 458
    const/4 v4, -0x1

    iput v4, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    .line 460
    :cond_5e
    iget-object v4, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v4}, Ljackpal/androidterm/TermViewFlipper;->onResume()V

    goto :goto_4c
.end method

.method private populateWindowList()V
    .registers 5

    .prologue
    .line 465
    iget-object v1, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    if-nez v1, :cond_5

    .line 482
    :cond_4
    :goto_4
    return-void

    .line 469
    :cond_5
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v1, :cond_4

    .line 470
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 471
    .local v0, "position":I
    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    if-nez v1, :cond_32

    .line 472
    new-instance v1, Ljackpal/androidterm/Term$WindowListActionBarAdapter;

    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-direct {v1, p0, v2}, Ljackpal/androidterm/Term$WindowListActionBarAdapter;-><init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/util/SessionList;)V

    iput-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    .line 474
    iget-object v1, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    iget-object v2, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    iget-object v3, p0, Ljackpal/androidterm/Term;->mWinListItemSelected:Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;

    invoke-virtual {v1, v2, v3}, Ljackpal/androidterm/compat/ActionBarCompat;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Ljackpal/androidterm/compat/ActionBarCompat$OnNavigationListener;)V

    .line 478
    :goto_25
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v2, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/TermViewFlipper;->addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 480
    iget-object v1, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/compat/ActionBarCompat;->setSelectedNavigationItem(I)V

    goto :goto_4

    .line 476
    :cond_32
    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    iget-object v2, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/WindowListAdapter;->setSessions(Ljackpal/androidterm/util/SessionList;)V

    goto :goto_25
.end method

.method private restart()V
    .registers 2

    .prologue
    .line 505
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 506
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    .line 507
    return-void
.end method

.method private updatePrefs()V
    .registers 15

    .prologue
    const/16 v11, 0x400

    const/4 v13, 0x2

    .line 550
    iget-object v10, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v10}, Ljackpal/androidterm/util/TermSettings;->getUseKeyboardShortcutsFlag()Z

    move-result v10

    iput-boolean v10, p0, Ljackpal/androidterm/Term;->mUseKeyboardShortcuts:Z

    .line 552
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 553
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 555
    iget-object v10, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v12, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v10, v12}, Ljackpal/androidterm/TermViewFlipper;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    .line 557
    iget-object v10, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v10}, Ljackpal/androidterm/TermViewFlipper;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .local v8, "v":Landroid/view/View;
    move-object v10, v8

    .line 558
    check-cast v10, Ljackpal/androidterm/emulatorview/EmulatorView;

    invoke-virtual {v10, v3}, Ljackpal/androidterm/emulatorview/EmulatorView;->setDensity(Landroid/util/DisplayMetrics;)V

    .line 559
    check-cast v8, Ljackpal/androidterm/TermView;

    .end local v8    # "v":Landroid/view/View;
    iget-object v10, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v8, v10}, Ljackpal/androidterm/TermView;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    goto :goto_28

    .line 562
    :cond_42
    iget-object v10, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v10, :cond_60

    .line 563
    iget-object v10, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v10}, Ljackpal/androidterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljackpal/androidterm/emulatorview/TermSession;

    .line 564
    .local v7, "session":Ljackpal/androidterm/emulatorview/TermSession;
    check-cast v7, Ljackpal/androidterm/GenericTermSession;

    .end local v7    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v10, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v7, v10}, Ljackpal/androidterm/GenericTermSession;->updatePrefs(Ljackpal/androidterm/util/TermSettings;)V

    goto :goto_4c

    .line 569
    :cond_60
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 570
    .local v9, "win":Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 571
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x400

    .line 572
    .local v0, "FULLSCREEN":I
    iget-object v10, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v10}, Ljackpal/androidterm/util/TermSettings;->showStatusBar()Z

    move-result v10

    if-eqz v10, :cond_9e

    const/4 v1, 0x0

    .line 573
    .local v1, "desiredFlag":I
    :goto_73
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-ne v1, v10, :cond_89

    sget v10, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v12, 0xb

    if-lt v10, v12, :cond_90

    iget v10, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    iget-object v12, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v12}, Ljackpal/androidterm/util/TermSettings;->actionBarMode()I

    move-result v12

    if-eq v10, v12, :cond_90

    .line 574
    :cond_89
    iget-boolean v10, p0, Ljackpal/androidterm/Term;->mAlreadyStarted:Z

    if-eqz v10, :cond_a0

    .line 577
    invoke-direct {p0}, Ljackpal/androidterm/Term;->restart()V

    .line 589
    :cond_90
    :goto_90
    iget-object v10, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v10}, Ljackpal/androidterm/util/TermSettings;->getScreenOrientation()I

    move-result v5

    .line 590
    .local v5, "orientation":I
    const/4 v4, 0x0

    .line 591
    .local v4, "o":I
    if-nez v5, :cond_b1

    .line 592
    const/4 v4, -0x1

    .line 600
    :cond_9a
    :goto_9a
    invoke-virtual {p0, v4}, Ljackpal/androidterm/Term;->setRequestedOrientation(I)V

    .line 601
    return-void

    .end local v1    # "desiredFlag":I
    .end local v4    # "o":I
    .end local v5    # "orientation":I
    :cond_9e
    move v1, v11

    .line 572
    goto :goto_73

    .line 579
    .restart local v1    # "desiredFlag":I
    :cond_a0
    invoke-virtual {v9, v1, v11}, Landroid/view/Window;->setFlags(II)V

    .line 580
    iget v10, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    if-ne v10, v13, :cond_90

    .line 581
    iget-object v10, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    if-eqz v10, :cond_90

    .line 582
    iget-object v10, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v10}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    goto :goto_90

    .line 593
    .restart local v4    # "o":I
    .restart local v5    # "orientation":I
    :cond_b1
    const/4 v10, 0x1

    if-ne v5, v10, :cond_b6

    .line 594
    const/4 v4, 0x0

    goto :goto_9a

    .line 595
    :cond_b6
    if-ne v5, v13, :cond_9a

    .line 596
    const/4 v4, 0x1

    goto :goto_9a
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 775
    packed-switch p1, :pswitch_data_38

    .line 796
    :cond_4
    :goto_4
    return-void

    .line 777
    :pswitch_5
    if-ne p2, v3, :cond_25

    if-eqz p3, :cond_25

    .line 778
    const-string v1, "jackpal.androidterm.window_id"

    const/4 v2, -0x2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 779
    .local v0, "position":I
    if-ltz v0, :cond_15

    .line 781
    iput v0, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    goto :goto_4

    .line 782
    :cond_15
    if-ne v0, v3, :cond_4

    .line 783
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCreateNewWindow()V

    .line 784
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    goto :goto_4

    .line 789
    .end local v0    # "position":I
    :cond_25
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v1, :cond_31

    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v1}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 790
    :cond_31
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 791
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    goto :goto_4

    .line 775
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 654
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 656
    invoke-direct {p0, p1}, Ljackpal/androidterm/Term;->checkHaveFullHwKeyboard(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    .line 658
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 659
    .local v0, "v":Ljackpal/androidterm/emulatorview/EmulatorView;
    if-eqz v0, :cond_17

    .line 660
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 663
    :cond_17
    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    if-eqz v1, :cond_20

    .line 665
    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v1}, Ljackpal/androidterm/WindowListAdapter;->notifyDataSetChanged()V

    .line 667
    :cond_20
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 859
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 876
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 861
    :pswitch_d
    invoke-direct {p0}, Ljackpal/androidterm/Term;->getCurrentEmulatorView()Ljackpal/androidterm/emulatorview/EmulatorView;

    move-result-object v1

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/EmulatorView;->toggleSelectingText()V

    goto :goto_c

    .line 864
    :pswitch_15
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCopyAll()V

    goto :goto_c

    .line 867
    :pswitch_19
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doPaste()V

    goto :goto_c

    .line 870
    :pswitch_1d
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doSendControlKey()V

    goto :goto_c

    .line 873
    :pswitch_21
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doSendFnKey()V

    goto :goto_c

    .line 859
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_d
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 19
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 329
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 331
    const-string v1, "Term"

    const-string v3, "onCreate"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "jackpal.androidterm.TermInternal"

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljackpal/androidterm/Term;->mPrivateAlias:Landroid/content/ComponentName;

    .line 335
    if-nez p1, :cond_22

    .line 336
    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->onNewIntent(Landroid/content/Intent;)V

    .line 338
    :cond_22
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 339
    .local v13, "mPrefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljackpal/androidterm/util/TermSettings;

    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v13}, Ljackpal/androidterm/util/TermSettings;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 340
    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 342
    new-instance v2, Landroid/content/Intent;

    const-string v1, "jackpal.androidterm.broadcast.APPEND_TO_PATH"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v2, "broadcast":Landroid/content/Intent;
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v3, 0xc

    if-lt v1, v3, :cond_4a

    .line 344
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    :cond_4a
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    .line 347
    const-string v3, "jackpal.androidterm.permission.APPEND_TO_PATH"

    move-object/from16 v0, p0

    iget-object v4, v0, Ljackpal/androidterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Ljackpal/androidterm/Term;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 349
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 350
    .end local v2    # "broadcast":Landroid/content/Intent;
    .local v4, "broadcast":Landroid/content/Intent;
    const-string v1, "jackpal.androidterm.broadcast.PREPEND_TO_PATH"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Ljackpal/androidterm/Term;->mPendingPathBroadcasts:I

    .line 352
    const-string v5, "jackpal.androidterm.permission.PREPEND_TO_PATH"

    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Ljackpal/androidterm/Term;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 354
    new-instance v1, Landroid/content/Intent;

    const-class v3, Ljackpal/androidterm/TermService;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljackpal/androidterm/Term;->TSIntent:Landroid/content/Intent;

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/Term;->TSIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 357
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_14b

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v1}, Ljackpal/androidterm/util/TermSettings;->actionBarMode()I

    move-result v12

    .line 359
    .local v12, "actionBarMode":I
    move-object/from16 v0, p0

    iput v12, v0, Ljackpal/androidterm/Term;->mActionBarMode:I

    .line 360
    sget-boolean v1, Ljackpal/androidterm/compat/AndroidCompat;->V11ToV20:Z

    if-eqz v1, :cond_b5

    .line 361
    packed-switch v12, :pswitch_data_152

    .line 374
    .end local v12    # "actionBarMode":I
    :cond_b5
    :goto_b5
    const/high16 v1, 0x7f030000

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->setContentView(I)V

    .line 375
    const v1, 0x7f070004

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/TermViewFlipper;

    move-object/from16 v0, p0

    iput-object v1, v0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    .line 377
    const-string v1, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 378
    .local v14, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "Term"

    invoke-virtual {v14, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 379
    const-string v1, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .line 380
    .local v16, "wm":Landroid/net/wifi/WifiManager;
    const/4 v15, 0x1

    .line 381
    .local v15, "wifiLockMode":I
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/16 v3, 0xc

    if-lt v1, v3, :cond_f2

    .line 382
    const/4 v15, 0x3

    .line 384
    :cond_f2
    const-string v1, "Term"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 386
    invoke-static/range {p0 .. p0}, Ljackpal/androidterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Ljackpal/androidterm/compat/ActionBarCompat;

    move-result-object v11

    .line 387
    .local v11, "actionBar":Ljackpal/androidterm/compat/ActionBarCompat;
    if-eqz v11, :cond_11c

    .line 388
    move-object/from16 v0, p0

    iput-object v11, v0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    .line 389
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Ljackpal/androidterm/compat/ActionBarCompat;->setNavigationMode(I)V

    .line 390
    const/4 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {v11, v1, v3}, Ljackpal/androidterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 391
    move-object/from16 v0, p0

    iget v1, v0, Ljackpal/androidterm/Term;->mActionBarMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_11c

    .line 392
    invoke-virtual {v11}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    .line 396
    :cond_11c
    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Ljackpal/androidterm/Term;->checkHaveFullHwKeyboard(Landroid/content/res/Configuration;)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljackpal/androidterm/Term;->mHaveFullHwKeyboard:Z

    .line 398
    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/Term;->updatePrefs()V

    .line 399
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljackpal/androidterm/Term;->mAlreadyStarted:Z

    .line 400
    return-void

    .line 363
    .end local v11    # "actionBar":Ljackpal/androidterm/compat/ActionBarCompat;
    .end local v14    # "pm":Landroid/os/PowerManager;
    .end local v15    # "wifiLockMode":I
    .end local v16    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v12    # "actionBarMode":I
    :pswitch_137
    const v1, 0x7f0a0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->setTheme(I)V

    goto/16 :goto_b5

    .line 366
    :pswitch_141
    const v1, 0x7f0a0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->setTheme(I)V

    goto/16 :goto_b5

    .line 371
    .end local v12    # "actionBarMode":I
    :cond_14b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Ljackpal/androidterm/Term;->mActionBarMode:I

    goto/16 :goto_b5

    .line 361
    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_137
        :pswitch_141
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 845
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 846
    const v0, 0x7f09002f

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 847
    const v0, 0x7f090057

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 848
    const/4 v0, 0x1

    const v1, 0x7f09001e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 849
    const v0, 0x7f09003e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 850
    const/4 v0, 0x3

    const v1, 0x7f090058

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 851
    const/4 v0, 0x4

    const v1, 0x7f09005a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 852
    invoke-direct {p0}, Ljackpal/androidterm/Term;->canPaste()Z

    move-result v0

    if-nez v0, :cond_39

    .line 853
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 855
    :cond_39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 671
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 672
    const v0, 0x7f070008

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljackpal/androidterm/compat/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 673
    const v0, 0x7f070009

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v2}, Ljackpal/androidterm/compat/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 674
    return v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 488
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 491
    iget-boolean v0, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    if-eqz v0, :cond_14

    .line 492
    iget-object v0, p0, Ljackpal/androidterm/Term;->TSIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->stopService(Landroid/content/Intent;)Z

    .line 494
    :cond_14
    iput-object v1, p0, Ljackpal/androidterm/Term;->mTermService:Ljackpal/androidterm/TermService;

    .line 495
    iput-object v1, p0, Ljackpal/androidterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    .line 496
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 497
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 499
    :cond_25
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 500
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 502
    :cond_32
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 885
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_c

    const/4 v1, 0x4

    if-ne p1, v1, :cond_c

    .line 890
    iput-boolean v0, p0, Ljackpal/androidterm/Term;->mBackKeyPressed:Z

    .line 893
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 899
    sparse-switch p1, :sswitch_data_5c

    .line 933
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    .line 901
    :sswitch_a
    sget v2, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_15

    .line 902
    iget-boolean v2, p0, Ljackpal/androidterm/Term;->mBackKeyPressed:Z

    if-eqz v2, :cond_9

    .line 907
    iput-boolean v0, p0, Ljackpal/androidterm/Term;->mBackKeyPressed:Z

    .line 909
    :cond_15
    iget v2, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2d

    iget-object v2, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v2}, Ljackpal/androidterm/compat/ActionBarCompat;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 910
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    move v0, v1

    .line 911
    goto :goto_9

    .line 913
    :cond_2d
    iget-object v2, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v2}, Ljackpal/androidterm/util/TermSettings;->getBackKeyAction()I

    move-result v2

    packed-switch v2, :pswitch_data_66

    goto :goto_9

    .line 915
    :pswitch_37
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 917
    :pswitch_39
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    move v0, v1

    .line 918
    goto :goto_9

    .line 920
    :pswitch_3e
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCloseWindow()V

    move v0, v1

    .line 921
    goto :goto_9

    .line 926
    :sswitch_43
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    if-eqz v0, :cond_56

    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->isShowing()Z

    move-result v0

    if-nez v0, :cond_56

    .line 927
    iget-object v0, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Ljackpal/androidterm/compat/ActionBarCompat;->show()V

    move v0, v1

    .line 928
    goto :goto_9

    .line 930
    :cond_56
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9

    .line 899
    nop

    :sswitch_data_5c
    .sparse-switch
        0x4 -> :sswitch_a
        0x52 -> :sswitch_43
    .end sparse-switch

    .line 913
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_37
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 800
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-eqz v2, :cond_b

    .line 823
    :cond_a
    :goto_a
    return-void

    .line 805
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Ljackpal/androidterm/Term;->mPrivateAlias:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 812
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_52

    :cond_28
    move v2, v3

    :goto_29
    packed-switch v2, :pswitch_data_5c

    goto :goto_a

    .line 814
    :pswitch_2d
    const v2, 0x7fffffff

    iput v2, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    goto :goto_a

    .line 812
    :sswitch_33
    const-string v2, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    goto :goto_29

    :sswitch_3d
    const-string v2, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    .line 817
    :pswitch_47
    const-string v2, "jackpal.androidterm.private.target_window"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 818
    .local v1, "target":I
    if-ltz v1, :cond_a

    .line 819
    iput v1, p0, Ljackpal/androidterm/Term;->onResumeSelectWindow:I

    goto :goto_a

    .line 812
    :sswitch_data_52
    .sparse-switch
        -0x60bc8535 -> :sswitch_3d
        -0x1130cbec -> :sswitch_33
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_47
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 679
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 680
    .local v0, "id":I
    const v3, 0x7f07000d

    if-ne v0, v3, :cond_1d

    .line 681
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doPreferences()V

    .line 709
    :cond_e
    :goto_e
    iget v3, p0, Ljackpal/androidterm/Term;->mActionBarMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    .line 710
    iget-object v3, p0, Ljackpal/androidterm/Term;->mActionBar:Ljackpal/androidterm/compat/ActionBarCompat;

    invoke-virtual {v3}, Ljackpal/androidterm/compat/ActionBarCompat;->hide()V

    .line 712
    :cond_18
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 682
    :cond_1d
    const v3, 0x7f070008

    if-ne v0, v3, :cond_26

    .line 683
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doCreateNewWindow()V

    goto :goto_e

    .line 684
    :cond_26
    const v3, 0x7f070009

    if-ne v0, v3, :cond_2f

    .line 685
    invoke-direct {p0}, Ljackpal/androidterm/Term;->confirmCloseWindow()V

    goto :goto_e

    .line 686
    :cond_2f
    const v3, 0x7f07000a

    if-ne v0, v3, :cond_3f

    .line 687
    new-instance v3, Landroid/content/Intent;

    const-class v4, Ljackpal/androidterm/WindowList;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3, v5}, Ljackpal/androidterm/Term;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 688
    :cond_3f
    const v3, 0x7f07000e

    if-ne v0, v3, :cond_57

    .line 689
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doResetTerminal()V

    .line 690
    const v3, 0x7f090055

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 691
    .local v2, "toast":Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 692
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 693
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_57
    const v3, 0x7f07000f

    if-ne v0, v3, :cond_60

    .line 694
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doEmailTranscript()V

    goto :goto_e

    .line 695
    :cond_60
    const v3, 0x7f07000c

    if-ne v0, v3, :cond_69

    .line 696
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doDocumentKeys()V

    goto :goto_e

    .line 697
    :cond_69
    const v3, 0x7f07000b

    if-ne v0, v3, :cond_72

    .line 698
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleSoftKeyboard()V

    goto :goto_e

    .line 699
    :cond_72
    const v3, 0x7f070010

    if-ne v0, v3, :cond_7b

    .line 700
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleWakeLock()V

    goto :goto_e

    .line 701
    :cond_7b
    const v3, 0x7f070011

    if-ne v0, v3, :cond_84

    .line 702
    invoke-direct {p0}, Ljackpal/androidterm/Term;->doToggleWifiLock()V

    goto :goto_e

    .line 703
    :cond_84
    const v3, 0x7f070012

    if-ne v0, v3, :cond_e

    .line 704
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x7f09003a

    invoke-virtual {p0, v4}, Ljackpal/androidterm/Term;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 706
    .local v1, "openHelp":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_e
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 605
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 607
    sget v1, Ljackpal/androidterm/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_b

    .line 611
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljackpal/androidterm/Term;->mBackKeyPressed:Z

    .line 617
    :cond_b
    iget-object v1, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 618
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Ljackpal/androidterm/Term$5;

    invoke-direct {v1, p0, v0}, Ljackpal/androidterm/Term$5;-><init>(Ljackpal/androidterm/Term;Landroid/os/IBinder;)V

    invoke-virtual {v1}, Ljackpal/androidterm/Term$5;->start()V

    .line 625
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 827
    const v2, 0x7f070010

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 828
    .local v0, "wakeLockItem":Landroid/view/MenuItem;
    const v2, 0x7f070011

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 829
    .local v1, "wifiLockItem":Landroid/view/MenuItem;
    iget-object v2, p0, Ljackpal/androidterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 830
    const v2, 0x7f09002d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 834
    :goto_1c
    iget-object v2, p0, Ljackpal/androidterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 835
    const v2, 0x7f09002e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 839
    :goto_2a
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 832
    :cond_2f
    const v2, 0x7f090033

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1c

    .line 837
    :cond_36
    const v2, 0x7f090034

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2a
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Ljackpal/androidterm/Term;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/util/TermSettings;->readPrefs(Landroid/content/SharedPreferences;)V

    .line 170
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 428
    iget-object v0, p0, Ljackpal/androidterm/Term;->TSIntent:Landroid/content/Intent;

    iget-object v1, p0, Ljackpal/androidterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/Term;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to bind to TermService!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_16
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 629
    iget-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->onPause()V

    .line 630
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    if-eqz v0, :cond_27

    .line 631
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v0, p0}, Ljackpal/androidterm/util/SessionList;->removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z

    .line 633
    iget-object v0, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    if-eqz v0, :cond_27

    .line 634
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/util/SessionList;->removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z

    .line 635
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/util/SessionList;->removeTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z

    .line 636
    iget-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    iget-object v1, p0, Ljackpal/androidterm/Term;->mWinListAdapter:Ljackpal/androidterm/WindowListAdapter;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/TermViewFlipper;->removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 640
    :cond_27
    iget-object v0, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->removeAllViews()V

    .line 642
    iget-object v0, p0, Ljackpal/androidterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->unbindService(Landroid/content/ServiceConnection;)V

    .line 644
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 645
    return-void
.end method

.method public onUpdate()V
    .registers 6

    .prologue
    .line 939
    iget-object v1, p0, Ljackpal/androidterm/Term;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    .line 940
    .local v1, "sessions":Ljackpal/androidterm/util/SessionList;
    if-nez v1, :cond_5

    .line 957
    :cond_4
    :goto_4
    return-void

    .line 944
    :cond_5
    invoke-virtual {v1}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 945
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljackpal/androidterm/Term;->mStopServiceOnFinish:Z

    .line 946
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    goto :goto_4

    .line 947
    :cond_12
    invoke-virtual {v1}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v3

    iget-object v4, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v4}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 948
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 949
    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3, v0}, Ljackpal/androidterm/TermViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Ljackpal/androidterm/emulatorview/EmulatorView;

    .line 950
    .local v2, "v":Ljackpal/androidterm/emulatorview/EmulatorView;
    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->getTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljackpal/androidterm/util/SessionList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 951
    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/EmulatorView;->onPause()V

    .line 952
    iget-object v3, p0, Ljackpal/androidterm/Term;->mViewFlipper:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3, v2}, Ljackpal/androidterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    .line 953
    add-int/lit8 v0, v0, -0x1

    .line 948
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method
