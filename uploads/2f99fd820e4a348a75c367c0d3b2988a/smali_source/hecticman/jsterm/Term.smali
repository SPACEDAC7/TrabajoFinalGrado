.class public Lhecticman/jsterm/Term;
.super Landroid/app/Activity;
.source "Term.java"

# interfaces
.implements Lhecticman/jsterm/emulatorview/UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/Term$EmulatorViewGestureListener;,
        Lhecticman/jsterm/Term$WindowListActionBarAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_PATH_BROADCAST:Ljava/lang/String; = "hecticman.jsterm.broadcast.APPEND_TO_PATH"

.field private static final ACTION_PATH_PREPEND_BROADCAST:Ljava/lang/String; = "hecticman.jsterm.broadcast.PREPEND_TO_PATH"

.field private static final COMMAND_HISTORY:I = 0x5

.field private static final COPY_ALL_ID:I = 0x1

.field public static final EXTRA_WINDOW_ID:Ljava/lang/String; = "hecticman.jsterm.window_id"

.field private static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field private static final MAGICNUMBER_BACKSPACE:I = 0x7f

.field private static final MAX_COMMANDS_HISTORY:I = 0x64

.field private static final PASTE_ID:I = 0x2

.field private static final PERMISSION_PATH_BROADCAST:Ljava/lang/String; = "hecticman.jsterm.permission.APPEND_TO_PATH"

.field private static final PERMISSION_PATH_PREPEND_BROADCAST:Ljava/lang/String; = "hecticman.jsterm.permission.PREPEND_TO_PATH"

.field public static final REQUEST_CHOOSE_WINDOW:I = 0x1

.field private static final SELECT_TEXT_ID:I = 0x0

.field private static final SEND_CONTROL_KEY_ID:I = 0x3

.field private static final SEND_FN_KEY_ID:I = 0x4

.field private static final VIEW_FLIPPER:I = 0x7f0c0008

.field private static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3


# instance fields
.field private TSIntent:Landroid/content/Intent;

.field private mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

.field private mActionBarMode:I

.field private mAlreadyStarted:Z

.field private mBackKeyListener:Landroid/view/View$OnKeyListener;

.field private mBackKeyPressed:Z

.field private mColorPrefs:Landroid/content/SharedPreferences;

.field private mHandler:Landroid/os/Handler;

.field private mHaveFullHwKeyboard:Z

.field private mLastNewIntent:Landroid/content/Intent;

.field private mPathReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingPathBroadcasts:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSettings:Lhecticman/jsterm/util/TermSettings;

.field private mStopServiceOnFinish:Z

.field private mTSConnection:Landroid/content/ServiceConnection;

.field private mTermService:Lhecticman/jsterm/TermService;

.field private mTermSessions:Lhecticman/jsterm/util/SessionList;

.field private mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

.field private mWinListItemSelected:Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;

.field private onResumeSelectWindow:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    iput-boolean v1, p0, Lhecticman/jsterm/Term;->mAlreadyStarted:Z

    .line 120
    iput-boolean v1, p0, Lhecticman/jsterm/Term;->mStopServiceOnFinish:Z

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lhecticman/jsterm/Term;->onResumeSelectWindow:I

    .line 140
    iput v1, p0, Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I

    .line 141
    new-instance v0, Lhecticman/jsterm/Term$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/Term$1;-><init>(Lhecticman/jsterm/Term;)V

    iput-object v0, p0, Lhecticman/jsterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lhecticman/jsterm/Term$2;

    invoke-direct {v0, p0}, Lhecticman/jsterm/Term$2;-><init>(Lhecticman/jsterm/Term;)V

    iput-object v0, p0, Lhecticman/jsterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    .line 178
    iput v1, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    .line 212
    new-instance v0, Lhecticman/jsterm/Term$3;

    invoke-direct {v0, p0}, Lhecticman/jsterm/Term$3;-><init>(Lhecticman/jsterm/Term;)V

    iput-object v0, p0, Lhecticman/jsterm/Term;->mWinListItemSelected:Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;

    .line 225
    iput-boolean v1, p0, Lhecticman/jsterm/Term;->mHaveFullHwKeyboard:Z

    .line 258
    new-instance v0, Lhecticman/jsterm/Term$4;

    invoke-direct {v0, p0}, Lhecticman/jsterm/Term$4;-><init>(Lhecticman/jsterm/Term;)V

    iput-object v0, p0, Lhecticman/jsterm/Term;->mBackKeyListener:Landroid/view/View$OnKeyListener;

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/Term;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$0(Lhecticman/jsterm/Term;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lhecticman/jsterm/Term;->makePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lhecticman/jsterm/Term;)Lhecticman/jsterm/util/TermSettings;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    return-object v0
.end method

.method static synthetic access$10(Lhecticman/jsterm/Term;)Lhecticman/jsterm/compat/ActionBarCompat;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    return-object v0
.end method

.method static synthetic access$11(Lhecticman/jsterm/Term;IIII)V
    .registers 5

    .prologue
    .line 1334
    invoke-direct {p0, p1, p2, p3, p4}, Lhecticman/jsterm/Term;->doUIToggle(IIII)V

    return-void
.end method

.method static synthetic access$12(Lhecticman/jsterm/Term;)V
    .registers 1

    .prologue
    .line 938
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doResetTerminal()V

    return-void
.end method

.method static synthetic access$13(Lhecticman/jsterm/Term;)V
    .registers 1

    .prologue
    .line 707
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doCloseWindow()V

    return-void
.end method

.method static synthetic access$14(Lhecticman/jsterm/Term;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lhecticman/jsterm/Term;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lhecticman/jsterm/Term;)Lhecticman/jsterm/emulatorview/TermSession;
    .registers 2

    .prologue
    .line 472
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lhecticman/jsterm/Term;)I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I

    return v0
.end method

.method static synthetic access$3(Lhecticman/jsterm/Term;I)V
    .registers 2

    .prologue
    .line 140
    iput p1, p0, Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I

    return-void
.end method

.method static synthetic access$4(Lhecticman/jsterm/Term;)Lhecticman/jsterm/TermService;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    return-object v0
.end method

.method static synthetic access$5(Lhecticman/jsterm/Term;)V
    .registers 1

    .prologue
    .line 366
    invoke-direct {p0}, Lhecticman/jsterm/Term;->populateViewFlipper()V

    return-void
.end method

.method static synthetic access$6(Lhecticman/jsterm/Term;)V
    .registers 1

    .prologue
    .line 401
    invoke-direct {p0}, Lhecticman/jsterm/Term;->populateWindowList()V

    return-void
.end method

.method static synthetic access$7(Lhecticman/jsterm/Term;Lhecticman/jsterm/TermService;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    return-void
.end method

.method static synthetic access$8(Lhecticman/jsterm/Term;)Lhecticman/jsterm/TermViewFlipper;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    return-object v0
.end method

.method static synthetic access$9(Lhecticman/jsterm/Term;)I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    return v0
.end method

.method private canPaste()Z
    .registers 3

    .prologue
    .line 927
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lhecticman/jsterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 928
    .local v0, "clip":Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 929
    const/4 v1, 0x1

    .line 931
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

    .line 591
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 592
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    .line 591
    goto :goto_a
.end method

.method private confirmCloseWindow()V
    .registers 5

    .prologue
    .line 689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 691
    const v2, 0x7f070084

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 692
    new-instance v1, Lhecticman/jsterm/Term$7;

    invoke-direct {v1, p0}, Lhecticman/jsterm/Term$7;-><init>(Lhecticman/jsterm/Term;)V

    .line 697
    .local v1, "closeWindow":Ljava/lang/Runnable;
    const v2, 0x1040013

    new-instance v3, Lhecticman/jsterm/Term$8;

    invoke-direct {v3, p0, v1}, Lhecticman/jsterm/Term$8;-><init>(Lhecticman/jsterm/Term;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 703
    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 704
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 705
    return-void
.end method

.method private createEmulatorView(Lhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/TermView;
    .registers 5
    .param p1, "session"    # Lhecticman/jsterm/emulatorview/TermSession;

    .prologue
    .line 461
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 462
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 463
    new-instance v0, Lhecticman/jsterm/TermView;

    invoke-direct {v0, p0, p1, v1}, Lhecticman/jsterm/TermView;-><init>(Landroid/content/Context;Lhecticman/jsterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V

    .line 465
    .local v0, "emulatorView":Lhecticman/jsterm/TermView;
    new-instance v2, Lhecticman/jsterm/Term$EmulatorViewGestureListener;

    invoke-direct {v2, p0, v0}, Lhecticman/jsterm/Term$EmulatorViewGestureListener;-><init>(Lhecticman/jsterm/Term;Lhecticman/jsterm/emulatorview/EmulatorView;)V

    invoke-virtual {v0, v2}, Lhecticman/jsterm/TermView;->setExtGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 466
    iget-object v2, p0, Lhecticman/jsterm/Term;->mBackKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Lhecticman/jsterm/TermView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 467
    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->registerForContextMenu(Landroid/view/View;)V

    .line 469
    return-object v0
.end method

.method private createTermSession()Lhecticman/jsterm/emulatorview/TermSession;
    .registers 4

    .prologue
    .line 454
    iget-object v1, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    .line 455
    .local v1, "settings":Lhecticman/jsterm/util/TermSettings;
    invoke-virtual {v1}, Lhecticman/jsterm/util/TermSettings;->getInitialCommand()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lhecticman/jsterm/Term;->createTermSession(Landroid/content/Context;Lhecticman/jsterm/util/TermSettings;Ljava/lang/String;)Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    .line 456
    .local v0, "session":Lhecticman/jsterm/emulatorview/TermSession;
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    invoke-virtual {v0, v2}, Lhecticman/jsterm/emulatorview/TermSession;->setFinishCallback(Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;)V

    .line 457
    return-object v0
.end method

.method protected static createTermSession(Landroid/content/Context;Lhecticman/jsterm/util/TermSettings;Ljava/lang/String;)Lhecticman/jsterm/emulatorview/TermSession;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lhecticman/jsterm/util/TermSettings;
    .param p2, "initialCommand"    # Ljava/lang/String;

    .prologue
    .line 446
    new-instance v0, Lhecticman/jsterm/ShellTermSession;

    invoke-direct {v0, p1, p2}, Lhecticman/jsterm/ShellTermSession;-><init>(Lhecticman/jsterm/util/TermSettings;Ljava/lang/String;)V

    .line 448
    .local v0, "session":Lhecticman/jsterm/ShellTermSession;
    const v1, 0x7f070030

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhecticman/jsterm/ShellTermSession;->setProcessExitMessage(Ljava/lang/String;)V

    .line 450
    return-object v0
.end method

.method private doCaptureScreen()V
    .registers 18

    .prologue
    .line 960
    invoke-direct/range {p0 .. p0}, Lhecticman/jsterm/Term;->getCurrentEmulatorView()Lhecticman/jsterm/emulatorview/EmulatorView;

    move-result-object v12

    .line 961
    .local v12, "view":Lhecticman/jsterm/emulatorview/EmulatorView;
    invoke-virtual/range {p0 .. p0}, Lhecticman/jsterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 963
    .local v7, "res":Landroid/content/res/Resources;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lhecticman/jsterm/emulatorview/EmulatorView;->setDrawingCacheEnabled(Z)V

    .line 966
    invoke-virtual {v12}, Lhecticman/jsterm/emulatorview/EmulatorView;->buildDrawingCache()V

    .line 970
    invoke-virtual {v12}, Lhecticman/jsterm/emulatorview/EmulatorView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 974
    .local v8, "savebitmap":Landroid/graphics/Bitmap;
    const-string v13, "------------"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-------"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v13, "yy-MM-dd-hh-mm-ss"

    invoke-direct {v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 978
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 979
    .local v11, "today":Ljava/util/Date;
    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 983
    .local v9, "strDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v13}, Lhecticman/jsterm/util/TermSettings;->getStoreLocation()I

    move-result v13

    if-nez v13, :cond_c1

    .line 984
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "dirPath":Ljava/lang/String;
    :goto_4d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/JSTerm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 992
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_6e

    .line 994
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 997
    :cond_6e
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v6, "hFile":Ljava/io/File;
    const v13, 0x7f070019

    :try_start_93
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1003
    .local v10, "strPath":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1004
    .local v5, "fos":Ljava/io/FileOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x46

    invoke-virtual {v8, v13, v14, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1005
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lhecticman/jsterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v10, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_93 .. :try_end_c0} :catch_c6
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_c0} :catch_de

    .line 1018
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "strPath":Ljava/lang/String;
    :goto_c0
    return-void

    .line 987
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "hFile":Ljava/io/File;
    :cond_c1
    invoke-direct/range {p0 .. p0}, Lhecticman/jsterm/Term;->doFindSD()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dirPath":Ljava/lang/String;
    goto :goto_4d

    .line 1008
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "hFile":Ljava/io/File;
    :catch_c6
    move-exception v2

    .line 1010
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lhecticman/jsterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f07001a

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_c0

    .line 1013
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_de
    move-exception v2

    .line 1015
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lhecticman/jsterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f07001b

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_c0
.end method

.method private doCloseWindow()V
    .registers 5

    .prologue
    .line 708
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    if-nez v2, :cond_5

    .line 730
    :cond_4
    :goto_4
    return-void

    .line 712
    :cond_5
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentEmulatorView()Lhecticman/jsterm/emulatorview/EmulatorView;

    move-result-object v1

    .line 713
    .local v1, "view":Lhecticman/jsterm/emulatorview/EmulatorView;
    if-eqz v1, :cond_4

    .line 716
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    iget-object v3, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v3}, Lhecticman/jsterm/TermViewFlipper;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v2, v3}, Lhecticman/jsterm/util/SessionList;->remove(I)Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    .line 717
    .local v0, "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->onPause()V

    .line 718
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TermSession;->finish()V

    .line 719
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2, v1}, Lhecticman/jsterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    .line 720
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v2}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v2

    if-nez v2, :cond_3a

    .line 721
    const/4 v2, 0x1

    iput-boolean v2, p0, Lhecticman/jsterm/Term;->mStopServiceOnFinish:Z

    .line 722
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->finish()V

    .line 727
    :goto_30
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    if-eqz v2, :cond_4

    .line 728
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    invoke-virtual {v2}, Lhecticman/jsterm/TermService;->updateNotification()V

    goto :goto_4

    .line 724
    :cond_3a
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2}, Lhecticman/jsterm/TermViewFlipper;->showNext()V

    goto :goto_30
.end method

.method private doCommandHistory()V
    .registers 19

    .prologue
    .line 1182
    invoke-virtual/range {p0 .. p0}, Lhecticman/jsterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1183
    .local v10, "r":Landroid/content/res/Resources;
    invoke-direct/range {p0 .. p0}, Lhecticman/jsterm/Term;->getCurrentTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v11

    .line 1184
    .local v11, "session":Lhecticman/jsterm/emulatorview/TermSession;
    if-nez v11, :cond_18

    .line 1185
    const v13, 0x7f07002d

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1243
    :goto_17
    return-void

    .line 1189
    :cond_18
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v11}, Lhecticman/jsterm/emulatorview/TermSession;->readCommands()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    const-string v14, "\r"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1190
    .local v3, "buffer2":[Ljava/lang/String;
    array-length v13, v3

    add-int/lit8 v6, v13, -0x1

    .line 1191
    .local v6, "count":I
    const/4 v2, 0x0

    .line 1194
    .local v2, "array_size":I
    array-length v15, v3

    const/4 v13, 0x0

    move v14, v13

    :goto_2e
    if-lt v14, v15, :cond_6b

    .line 1205
    const/16 v13, 0x64

    if-ge v2, v13, :cond_b9

    .end local v2    # "array_size":I
    :goto_34
    new-array v5, v2, [Ljava/lang/CharSequence;

    .line 1208
    .local v5, "cmdItems":[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 1209
    .local v9, "k":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_38
    if-ge v7, v6, :cond_3e

    const/16 v13, 0x64

    if-lt v7, v13, :cond_bd

    .line 1228
    :cond_3e
    invoke-virtual {v11, v5}, Lhecticman/jsterm/emulatorview/TermSession;->setCmdItems([Ljava/lang/CharSequence;)V

    .line 1231
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1232
    .local v1, "alertDlg":Landroid/app/AlertDialog$Builder;
    const v13, 0x7f07002c

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1234
    new-instance v13, Lhecticman/jsterm/Term$9;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lhecticman/jsterm/Term$9;-><init>(Lhecticman/jsterm/Term;)V

    .line 1233
    invoke-virtual {v1, v5, v13}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1241
    const v13, 0x7f07001f

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1242
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_17

    .line 1194
    .end local v1    # "alertDlg":Landroid/app/AlertDialog$Builder;
    .end local v5    # "cmdItems":[Ljava/lang/CharSequence;
    .end local v7    # "i":I
    .end local v9    # "k":I
    .restart local v2    # "array_size":I
    :cond_6b
    aget-object v4, v3, v14

    .line 1195
    .local v4, "cmd":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1196
    .local v8, "idx":I
    :goto_6e
    const/16 v13, 0x7f

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v13, -0x1

    if-gt v8, v13, :cond_8d

    .line 1199
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_89

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_89

    .line 1200
    add-int/lit8 v2, v2, 0x1

    .line 1194
    :cond_89
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_2e

    .line 1197
    :cond_8d
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v17, 0x0

    add-int/lit8 v13, v8, -0x1

    if-gez v13, :cond_b6

    const/4 v13, 0x0

    :goto_96
    move/from16 v0, v17

    invoke-virtual {v4, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6e

    :cond_b6
    add-int/lit8 v13, v8, -0x1

    goto :goto_96

    .line 1205
    .end local v4    # "cmd":Ljava/lang/String;
    .end local v8    # "idx":I
    :cond_b9
    const/16 v2, 0x64

    goto/16 :goto_34

    .line 1210
    .end local v2    # "array_size":I
    .restart local v5    # "cmdItems":[Ljava/lang/CharSequence;
    .restart local v7    # "i":I
    .restart local v9    # "k":I
    :cond_bd
    sub-int v13, v6, v7

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v3, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_d1

    .line 1209
    :cond_cd
    :goto_cd
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_38

    .line 1213
    :cond_d1
    sub-int v13, v6, v7

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v3, v13

    aput-object v13, v5, v9

    .line 1216
    aget-object v13, v5, v9

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1218
    .local v12, "tmpCmd":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1219
    .restart local v8    # "idx":I
    :goto_e0
    const/16 v13, 0x7f

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v13, -0x1

    if-gt v8, v13, :cond_f4

    .line 1222
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_cd

    .line 1223
    aput-object v12, v5, v9

    .line 1224
    add-int/lit8 v9, v9, 0x1

    goto :goto_cd

    .line 1220
    :cond_f4
    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    add-int/lit8 v13, v8, -0x1

    if-gez v13, :cond_116

    const/4 v13, 0x0

    :goto_fc
    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_e0

    :cond_116
    add-int/lit8 v13, v8, -0x1

    goto :goto_fc
.end method

.method private doCopyAll()V
    .registers 3

    .prologue
    .line 1155
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lhecticman/jsterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1154
    check-cast v0, Landroid/text/ClipboardManager;

    .line 1156
    .local v0, "clip":Landroid/text/ClipboardManager;
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v1

    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/TermSession;->getTranscriptText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    return-void
.end method

.method private doCreateNewWindow()V
    .registers 5

    .prologue
    .line 669
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    if-nez v2, :cond_c

    .line 670
    const-string v2, "Term"

    const-string v3, "Couldn\'t create new window because mTermSessions == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_b
    :goto_b
    return-void

    .line 674
    :cond_c
    invoke-direct {p0}, Lhecticman/jsterm/Term;->createTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    .line 675
    .local v0, "session":Lhecticman/jsterm/emulatorview/TermSession;
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v2, v0}, Lhecticman/jsterm/util/SessionList;->add(Lhecticman/jsterm/emulatorview/TermSession;)Z

    .line 677
    invoke-direct {p0, v0}, Lhecticman/jsterm/Term;->createEmulatorView(Lhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/TermView;

    move-result-object v1

    .line 678
    .local v1, "view":Lhecticman/jsterm/TermView;
    iget-object v2, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v1, v2}, Lhecticman/jsterm/TermView;->updatePrefs(Lhecticman/jsterm/util/TermSettings;)V

    .line 680
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2, v1}, Lhecticman/jsterm/TermViewFlipper;->addView(Landroid/view/View;)V

    .line 681
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    iget-object v3, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v3}, Lhecticman/jsterm/TermViewFlipper;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lhecticman/jsterm/TermViewFlipper;->setDisplayedChild(I)V

    .line 683
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    if-eqz v2, :cond_b

    .line 684
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    invoke-virtual {v2}, Lhecticman/jsterm/TermService;->updateNotification()V

    goto :goto_b
.end method

.method private doDocumentKeys()V
    .registers 11

    .prologue
    const/4 v2, 0x7

    .line 1246
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1247
    .local v8, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1248
    .local v3, "r":Landroid/content/res/Resources;
    const v0, 0x7f07007f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1250
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v0}, Lhecticman/jsterm/util/TermSettings;->getControlKeyId()I

    move-result v1

    .line 1251
    const v4, 0x7f060014

    .line 1252
    const v5, 0x7f070080

    .line 1253
    const v6, 0x7f070081

    const-string v7, "CTRLKEY"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lhecticman/jsterm/Term;->formatMessage(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1254
    const-string v0, "\n\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1255
    iget-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v0}, Lhecticman/jsterm/util/TermSettings;->getFnKeyId()I

    move-result v1

    .line 1256
    const v4, 0x7f060015

    .line 1257
    const v5, 0x7f070082

    .line 1258
    const v6, 0x7f070083

    const-string v7, "FNKEY"

    move-object v0, p0

    .line 1255
    invoke-direct/range {v0 .. v7}, Lhecticman/jsterm/Term;->formatMessage(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1259
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1260
    return-void
.end method

.method private doEmailTranscript()V
    .registers 6

    .prologue
    .line 950
    const-string v0, "user@example.com"

    .line 952
    .local v0, "addr":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mailto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 952
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 955
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "body"

    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v3

    invoke-virtual {v3}, Lhecticman/jsterm/emulatorview/TermSession;->getTranscriptText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    invoke-virtual {p0, v1}, Lhecticman/jsterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 957
    return-void
.end method

.method private doFindSD()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v8, 0x0

    .line 1023
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1024
    .local v1, "oResources":Landroid/content/res/Resources;
    const v7, 0x7f060017

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "arrPaths":[Ljava/lang/String;
    const-string v4, "/mnt"

    .line 1026
    .local v4, "strSDCardPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1029
    .local v5, "strSDKPath":Ljava/lang/String;
    array-length v10, v0

    move v9, v8

    :goto_18
    if-lt v9, v10, :cond_3e

    .line 1047
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1048
    const-string v7, "/mnt"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 1051
    array-length v10, v0

    move v9, v8

    :goto_2c
    if-lt v9, v10, :cond_8b

    .line 1070
    :cond_2e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1071
    invoke-direct {p0, v4}, Lhecticman/jsterm/Term;->mTestPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d9

    move-object v6, v4

    .line 1075
    :cond_3d
    :goto_3d
    return-object v6

    .line 1029
    :cond_3e
    aget-object v2, v0, v9

    .line 1032
    .local v2, "strPathPart1":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1033
    .local v6, "strTestPath":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5d

    invoke-direct {p0, v6}, Lhecticman/jsterm/Term;->mTestPath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 1037
    :cond_5d
    array-length v11, v0

    move v7, v8

    :goto_5f
    if-lt v7, v11, :cond_65

    .line 1029
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_18

    .line 1037
    :cond_65
    aget-object v3, v0, v7

    .line 1040
    .local v3, "strPathPart2":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1041
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_88

    invoke-direct {p0, v6}, Lhecticman/jsterm/Term;->mTestPath(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3d

    .line 1037
    :cond_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 1051
    .end local v2    # "strPathPart1":Ljava/lang/String;
    .end local v3    # "strPathPart2":Ljava/lang/String;
    .end local v6    # "strTestPath":Ljava/lang/String;
    :cond_8b
    aget-object v2, v0, v9

    .line 1054
    .restart local v2    # "strPathPart1":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1055
    .restart local v6    # "strTestPath":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_aa

    invoke-direct {p0, v6}, Lhecticman/jsterm/Term;->mTestPath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 1059
    :cond_aa
    array-length v11, v0

    move v7, v8

    :goto_ac
    if-lt v7, v11, :cond_b3

    .line 1051
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto/16 :goto_2c

    .line 1059
    :cond_b3
    aget-object v3, v0, v7

    .line 1062
    .restart local v3    # "strPathPart2":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1063
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_d6

    invoke-direct {p0, v6}, Lhecticman/jsterm/Term;->mTestPath(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3d

    .line 1059
    :cond_d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_ac

    .line 1075
    .end local v2    # "strPathPart1":Ljava/lang/String;
    .end local v3    # "strPathPart2":Ljava/lang/String;
    .end local v6    # "strTestPath":Ljava/lang/String;
    :cond_d9
    const/4 v6, 0x0

    goto/16 :goto_3d
.end method

.method private doPaste()V
    .registers 7

    .prologue
    .line 1161
    const-string v4, "clipboard"

    invoke-virtual {p0, v4}, Lhecticman/jsterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1160
    check-cast v0, Landroid/text/ClipboardManager;

    .line 1162
    .local v0, "clip":Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1165
    .local v2, "paste":Ljava/lang/CharSequence;
    :try_start_c
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_15} :catch_22

    move-result-object v3

    .line 1170
    .local v3, "utf8":[B
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lhecticman/jsterm/emulatorview/TermSession;->write(Ljava/lang/String;)V

    .line 1171
    .end local v3    # "utf8":[B
    :goto_21
    return-void

    .line 1166
    :catch_22
    move-exception v1

    .line 1167
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "Term"

    const-string v5, "UTF-8 encoding not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private doPreferences()V
    .registers 3

    .prologue
    .line 935
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lhecticman/jsterm/TermPreferences;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 936
    return-void
.end method

.method private doResetTerminal()V
    .registers 2

    .prologue
    .line 939
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    .line 940
    .local v0, "session":Lhecticman/jsterm/emulatorview/TermSession;
    if-eqz v0, :cond_e

    .line 941
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TermSession;->reset()V

    .line 942
    check-cast v0, Lhecticman/jsterm/ShellTermSession;

    .end local v0    # "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-virtual {v0}, Lhecticman/jsterm/ShellTermSession;->sendInitialCommand()V

    .line 944
    :cond_e
    return-void
.end method

.method private doSendControlKey()V
    .registers 2

    .prologue
    .line 1174
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentEmulatorView()Lhecticman/jsterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->sendControlKey()V

    .line 1175
    return-void
.end method

.method private doSendFnKey()V
    .registers 2

    .prologue
    .line 1178
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentEmulatorView()Lhecticman/jsterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->sendFnKey()V

    .line 1179
    return-void
.end method

.method private doToggleActionBar()V
    .registers 3

    .prologue
    .line 1323
    iget-object v0, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    .line 1324
    .local v0, "bar":Lhecticman/jsterm/compat/ActionBarCompat;
    if-nez v0, :cond_5

    .line 1332
    :goto_4
    return-void

    .line 1327
    :cond_5
    invoke-virtual {v0}, Lhecticman/jsterm/compat/ActionBarCompat;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1328
    invoke-virtual {v0}, Lhecticman/jsterm/compat/ActionBarCompat;->hide()V

    goto :goto_4

    .line 1330
    :cond_f
    invoke-virtual {v0}, Lhecticman/jsterm/compat/ActionBarCompat;->show()V

    goto :goto_4
.end method

.method private doToggleSoftKeyboard()V
    .registers 4

    .prologue
    .line 1278
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lhecticman/jsterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1277
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1279
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1281
    invoke-static {p0}, Lhecticman/jsterm/compat/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 1282
    return-void
.end method

.method private doToggleWakeLock()V
    .registers 2

    .prologue
    .line 1285
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v0}, Lhecticman/jsterm/util/TermSettings;->isWakeLock()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1286
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1301
    :cond_15
    :goto_15
    return-void

    .line 1287
    :cond_16
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v0}, Lhecticman/jsterm/util/TermSettings;->isWakeLock()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1288
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_15
.end method

.method private doToggleWifiLock()V
    .registers 2

    .prologue
    .line 1304
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v0}, Lhecticman/jsterm/util/TermSettings;->isWifiLock()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1305
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1320
    :cond_15
    :goto_15
    return-void

    .line 1306
    :cond_16
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v0}, Lhecticman/jsterm/util/TermSettings;->isWifiLock()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1307
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_15
.end method

.method private doUIToggle(IIII)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1335
    iget v0, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    packed-switch v0, :pswitch_data_44

    .line 1363
    :cond_5
    :goto_5
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentEmulatorView()Lhecticman/jsterm/emulatorview/EmulatorView;

    move-result-object v0

    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/EmulatorView;->requestFocus()Z

    .line 1364
    :goto_c
    return-void

    .line 1337
    :pswitch_d
    sget v0, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1f

    iget-boolean v0, p0, Lhecticman/jsterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_1b

    div-int/lit8 v0, p4, 0x2

    if-ge p2, v0, :cond_1f

    .line 1338
    :cond_1b
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->openOptionsMenu()V

    goto :goto_c

    .line 1341
    :cond_1f
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1345
    :pswitch_23
    iget-boolean v0, p0, Lhecticman/jsterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_5

    .line 1346
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1350
    :pswitch_2b
    iget-boolean v0, p0, Lhecticman/jsterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_33

    div-int/lit8 v0, p4, 0x2

    if-ge p2, v0, :cond_37

    .line 1351
    :cond_33
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doToggleActionBar()V

    goto :goto_c

    .line 1354
    :cond_37
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1358
    :pswitch_3b
    iget-boolean v0, p0, Lhecticman/jsterm/Term;->mHaveFullHwKeyboard:Z

    if-nez v0, :cond_5

    .line 1359
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doToggleSoftKeyboard()V

    goto :goto_5

    .line 1335
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_d
        :pswitch_23
        :pswitch_2b
        :pswitch_3b
    .end packed-switch
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
    .line 1266
    if-ne p1, p2, :cond_7

    .line 1267
    invoke-virtual {p3, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1273
    :goto_6
    return-object v2

    .line 1269
    :cond_7
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1270
    .local v1, "keyNames":[Ljava/lang/String;
    aget-object v0, v1, p1

    .line 1271
    .local v0, "keyName":Ljava/lang/String;
    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1272
    .local v3, "template":Ljava/lang/String;
    invoke-virtual {v3, p7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1273
    .local v2, "result":Ljava/lang/String;
    goto :goto_6
.end method

.method private getCurrentEmulatorView()Lhecticman/jsterm/emulatorview/EmulatorView;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v0}, Lhecticman/jsterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/EmulatorView;

    return-object v0
.end method

.method private getCurrentTermSession()Lhecticman/jsterm/emulatorview/TermSession;
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    iget-object v1, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v1}, Lhecticman/jsterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Lhecticman/jsterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/TermSession;

    return-object v0
.end method

.method private mTestPath(Ljava/lang/String;)Z
    .registers 8
    .param p1, "strSDCardPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1081
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TEST SDCard = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :try_start_2a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v1, "oFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_124

    .line 1088
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exists"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_106

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Directory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_96

    .line 1094
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot read"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    .end local v1    # "oFile":Ljava/io/File;
    :goto_95
    return v2

    .line 1098
    .restart local v1    # "oFile":Ljava/io/File;
    :cond_96
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_e8

    .line 1099
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot write"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_b8} :catch_b9

    goto :goto_95

    .line 1146
    .end local v1    # "oFile":Ljava/io/File;
    :catch_b9
    move-exception v0

    .line 1148
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mTestPath Exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 1102
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "oFile":Ljava/io/File;
    :cond_e8
    :try_start_e8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "finally found !!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v2, 0x1

    goto :goto_95

    .line 1137
    :cond_106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NOT Directory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_95

    .line 1142
    :cond_124
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HECTIC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_140} :catch_b9

    goto/16 :goto_95
.end method

.method private makePathFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 11
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 345
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 346
    :cond_9
    const-string v5, ""

    .line 363
    :goto_b
    return-object v5

    .line 349
    :cond_c
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 350
    .local v3, "keys":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "keys":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    .line 351
    .restart local v3    # "keys":[Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 352
    .local v0, "collator":Ljava/text/Collator;
    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v4, "path":Ljava/lang/StringBuilder;
    array-length v7, v3

    move v5, v6

    :goto_2c
    if-lt v5, v7, :cond_39

    .line 363
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    .line 355
    :cond_39
    aget-object v2, v3, v5

    .line 356
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "dir":Ljava/lang/String;
    if-eqz v1, :cond_51

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 358
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c
.end method

.method private populateViewFlipper()V
    .registers 9

    .prologue
    .line 367
    iget-object v6, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    if-eqz v6, :cond_5e

    .line 368
    iget-object v6, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    invoke-virtual {v6}, Lhecticman/jsterm/TermService;->getSessions()Lhecticman/jsterm/util/SessionList;

    move-result-object v6

    iput-object v6, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    .line 369
    iget-object v6, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v6, p0}, Lhecticman/jsterm/util/SessionList;->addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 371
    iget-object v6, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v6}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v6

    if-nez v6, :cond_22

    .line 372
    iget-object v6, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-direct {p0}, Lhecticman/jsterm/Term;->createTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v7

    invoke-virtual {v6, v7}, Lhecticman/jsterm/util/SessionList;->add(Lhecticman/jsterm/emulatorview/TermSession;)Z

    .line 375
    :cond_22
    iget-object v6, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v6}, Lhecticman/jsterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5f

    .line 380
    invoke-direct {p0}, Lhecticman/jsterm/Term;->updatePrefs()V

    .line 382
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 383
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 384
    .local v1, "flags":I
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "action":Ljava/lang/String;
    const/high16 v6, 0x100000

    and-int/2addr v6, v1

    if-nez v6, :cond_59

    .line 386
    if-eqz v0, :cond_59

    .line 387
    const-string v6, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 388
    iget-object v6, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    iget-object v7, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v7}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lhecticman/jsterm/TermViewFlipper;->setDisplayedChild(I)V

    .line 397
    :cond_59
    :goto_59
    iget-object v6, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v6}, Lhecticman/jsterm/TermViewFlipper;->resumeCurrentView()V

    .line 399
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "flags":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5e
    return-void

    .line 375
    :cond_5f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhecticman/jsterm/emulatorview/TermSession;

    .line 376
    .local v3, "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-direct {p0, v3}, Lhecticman/jsterm/Term;->createEmulatorView(Lhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/TermView;

    move-result-object v5

    .line 377
    .local v5, "view":Lhecticman/jsterm/emulatorview/EmulatorView;
    iget-object v7, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v7, v5}, Lhecticman/jsterm/TermViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_28

    .line 389
    .end local v3    # "session":Lhecticman/jsterm/emulatorview/TermSession;
    .end local v5    # "view":Lhecticman/jsterm/emulatorview/EmulatorView;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "flags":I
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_6f
    const-string v6, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 390
    const-string v6, "jackpal.androidterm.private.target_window"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 391
    .local v4, "target":I
    if-ltz v4, :cond_59

    .line 392
    iget-object v6, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v6, v4}, Lhecticman/jsterm/TermViewFlipper;->setDisplayedChild(I)V

    goto :goto_59
.end method

.method private populateWindowList()V
    .registers 6

    .prologue
    .line 402
    iget-object v2, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    if-nez v2, :cond_5

    .line 420
    :cond_4
    :goto_4
    return-void

    .line 407
    :cond_5
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    if-eqz v2, :cond_4

    .line 408
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2}, Lhecticman/jsterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    .line 409
    .local v1, "position":I
    iget-object v2, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    if-nez v2, :cond_35

    .line 410
    new-instance v0, Lhecticman/jsterm/Term$WindowListActionBarAdapter;

    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-direct {v0, p0, v2}, Lhecticman/jsterm/Term$WindowListActionBarAdapter;-><init>(Lhecticman/jsterm/Term;Lhecticman/jsterm/util/SessionList;)V

    .line 411
    .local v0, "adapter":Lhecticman/jsterm/WindowListAdapter;
    iput-object v0, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    .line 412
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v2, v0}, Lhecticman/jsterm/util/SessionList;->addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 413
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2, v0}, Lhecticman/jsterm/TermViewFlipper;->addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 414
    iget-object v2, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    iget-object v3, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    iget-object v4, p0, Lhecticman/jsterm/Term;->mWinListItemSelected:Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;

    invoke-virtual {v2, v3, v4}, Lhecticman/jsterm/compat/ActionBarCompat;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lhecticman/jsterm/compat/ActionBarCompat$OnNavigationListener;)V

    .line 418
    .end local v0    # "adapter":Lhecticman/jsterm/WindowListAdapter;
    :goto_2f
    iget-object v2, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    invoke-virtual {v2, v1}, Lhecticman/jsterm/compat/ActionBarCompat;->setSelectedNavigationItem(I)V

    goto :goto_4

    .line 416
    :cond_35
    iget-object v2, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    iget-object v3, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v2, v3}, Lhecticman/jsterm/WindowListAdapter;->setSessions(Lhecticman/jsterm/util/SessionList;)V

    goto :goto_2f
.end method

.method private restart()V
    .registers 2

    .prologue
    .line 441
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->startActivity(Landroid/content/Intent;)V

    .line 442
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->finish()V

    .line 443
    return-void
.end method

.method private updatePrefs()V
    .registers 11

    .prologue
    const/16 v8, 0x400

    .line 481
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 482
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 485
    iget-object v7, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    iget-object v9, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v7, v9}, Lhecticman/jsterm/TermViewFlipper;->updatePrefs(Lhecticman/jsterm/util/TermSettings;)V

    .line 487
    iget-object v7, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v7}, Lhecticman/jsterm/TermViewFlipper;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6c

    .line 492
    iget-object v7, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    if-eqz v7, :cond_35

    .line 493
    iget-object v7, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v7}, Lhecticman/jsterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_80

    .line 499
    :cond_35
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 500
    .local v6, "win":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 501
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x400

    .line 502
    .local v0, "FULLSCREEN":I
    iget-object v7, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v7}, Lhecticman/jsterm/util/TermSettings;->showStatusBar()Z

    move-result v7

    if-eqz v7, :cond_8e

    const/4 v1, 0x0

    .line 503
    .local v1, "desiredFlag":I
    :goto_48
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-ne v1, v7, :cond_5e

    sget v7, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v9, 0xb

    if-lt v7, v9, :cond_65

    iget v7, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    iget-object v9, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v9}, Lhecticman/jsterm/util/TermSettings;->actionBarMode()I

    move-result v9

    if-eq v7, v9, :cond_65

    .line 504
    :cond_5e
    iget-boolean v7, p0, Lhecticman/jsterm/Term;->mAlreadyStarted:Z

    if-eqz v7, :cond_90

    .line 507
    invoke-direct {p0}, Lhecticman/jsterm/Term;->restart()V

    .line 518
    :cond_65
    :goto_65
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doToggleWakeLock()V

    .line 521
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doToggleWifiLock()V

    .line 522
    return-void

    .line 487
    .end local v0    # "FULLSCREEN":I
    .end local v1    # "desiredFlag":I
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "win":Landroid/view/Window;
    :cond_6c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .local v5, "v":Landroid/view/View;
    move-object v7, v5

    .line 488
    check-cast v7, Lhecticman/jsterm/emulatorview/EmulatorView;

    invoke-virtual {v7, v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->setDensity(Landroid/util/DisplayMetrics;)V

    .line 489
    check-cast v5, Lhecticman/jsterm/TermView;

    .end local v5    # "v":Landroid/view/View;
    iget-object v7, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v5, v7}, Lhecticman/jsterm/TermView;->updatePrefs(Lhecticman/jsterm/util/TermSettings;)V

    goto :goto_1f

    .line 493
    :cond_80
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhecticman/jsterm/emulatorview/TermSession;

    .line 494
    .local v4, "session":Lhecticman/jsterm/emulatorview/TermSession;
    check-cast v4, Lhecticman/jsterm/ShellTermSession;

    .end local v4    # "session":Lhecticman/jsterm/emulatorview/TermSession;
    iget-object v9, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v4, v9}, Lhecticman/jsterm/ShellTermSession;->updatePrefs(Lhecticman/jsterm/util/TermSettings;)V

    goto :goto_2f

    .restart local v0    # "FULLSCREEN":I
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "win":Landroid/view/Window;
    :cond_8e
    move v1, v8

    .line 502
    goto :goto_48

    .line 509
    .restart local v1    # "desiredFlag":I
    :cond_90
    invoke-virtual {v6, v1, v8}, Landroid/view/Window;->setFlags(II)V

    .line 510
    iget v7, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_65

    .line 511
    iget-object v7, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    invoke-virtual {v7}, Lhecticman/jsterm/compat/ActionBarCompat;->hide()V

    goto :goto_65
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 734
    packed-switch p1, :pswitch_data_34

    .line 754
    :cond_4
    :goto_4
    return-void

    .line 736
    :pswitch_5
    if-ne p2, v3, :cond_25

    if-eqz p3, :cond_25

    .line 737
    const-string v1, "hecticman.jsterm.window_id"

    const/4 v2, -0x2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 738
    .local v0, "position":I
    if-ltz v0, :cond_15

    .line 740
    iput v0, p0, Lhecticman/jsterm/Term;->onResumeSelectWindow:I

    goto :goto_4

    .line 741
    :cond_15
    if-ne v0, v3, :cond_4

    .line 742
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doCreateNewWindow()V

    .line 743
    iget-object v1, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v1}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lhecticman/jsterm/Term;->onResumeSelectWindow:I

    goto :goto_4

    .line 747
    .end local v0    # "position":I
    :cond_25
    iget-object v1, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v1}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 748
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhecticman/jsterm/Term;->mStopServiceOnFinish:Z

    .line 749
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->finish()V

    goto :goto_4

    .line 734
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 599
    invoke-direct {p0, p1}, Lhecticman/jsterm/Term;->checkHaveFullHwKeyboard(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, p0, Lhecticman/jsterm/Term;->mHaveFullHwKeyboard:Z

    .line 601
    iget-object v1, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v1}, Lhecticman/jsterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 602
    .local v0, "v":Lhecticman/jsterm/emulatorview/EmulatorView;
    if-eqz v0, :cond_17

    .line 603
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->updateSize(Z)V

    .line 606
    :cond_17
    iget-object v1, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    if-eqz v1, :cond_20

    .line 608
    iget-object v1, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    invoke-virtual {v1}, Lhecticman/jsterm/WindowListAdapter;->notifyDataSetChanged()V

    .line 610
    :cond_20
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 823
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    .line 843
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 825
    :pswitch_d
    invoke-direct {p0}, Lhecticman/jsterm/Term;->getCurrentEmulatorView()Lhecticman/jsterm/emulatorview/EmulatorView;

    move-result-object v1

    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->toggleSelectingText()V

    goto :goto_c

    .line 828
    :pswitch_15
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doCopyAll()V

    goto :goto_c

    .line 831
    :pswitch_19
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doPaste()V

    goto :goto_c

    .line 834
    :pswitch_1d
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doSendControlKey()V

    goto :goto_c

    .line 837
    :pswitch_21
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doSendFnKey()V

    goto :goto_c

    .line 840
    :pswitch_25
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doCommandHistory()V

    goto :goto_c

    .line 823
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 17
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 276
    const-string v0, "Term"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/Term;->mPrefs:Landroid/content/SharedPreferences;

    .line 278
    const-string v0, "color_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lhecticman/jsterm/Term;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/Term;->mColorPrefs:Landroid/content/SharedPreferences;

    .line 279
    new-instance v0, Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lhecticman/jsterm/Term;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lhecticman/jsterm/Term;->mColorPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v0, v2, v4, v5}, Lhecticman/jsterm/util/TermSettings;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    .line 281
    new-instance v1, Landroid/content/Intent;

    const-string v0, "hecticman.jsterm.broadcast.APPEND_TO_PATH"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, "broadcast":Landroid/content/Intent;
    sget v0, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_3a

    .line 283
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    :cond_3a
    iget v0, p0, Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I

    .line 286
    const-string v2, "hecticman.jsterm.permission.APPEND_TO_PATH"

    iget-object v3, p0, Lhecticman/jsterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lhecticman/jsterm/Term;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 288
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 289
    .end local v1    # "broadcast":Landroid/content/Intent;
    .local v3, "broadcast":Landroid/content/Intent;
    const-string v0, "hecticman.jsterm.broadcast.PREPEND_TO_PATH"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget v0, p0, Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhecticman/jsterm/Term;->mPendingPathBroadcasts:I

    .line 291
    const-string v4, "hecticman.jsterm.permission.PREPEND_TO_PATH"

    iget-object v5, p0, Lhecticman/jsterm/Term;->mPathReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lhecticman/jsterm/Term;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lhecticman/jsterm/TermService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lhecticman/jsterm/Term;->TSIntent:Landroid/content/Intent;

    .line 294
    iget-object v0, p0, Lhecticman/jsterm/Term;->TSIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 296
    iget-object v0, p0, Lhecticman/jsterm/Term;->TSIntent:Landroid/content/Intent;

    iget-object v2, p0, Lhecticman/jsterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v4}, Lhecticman/jsterm/Term;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_88

    .line 297
    const-string v0, "Term"

    const-string v2, "bind to service failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_88
    sget v0, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_99

    .line 301
    iget-object v0, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v0}, Lhecticman/jsterm/util/TermSettings;->actionBarMode()I

    move-result v11

    .line 302
    .local v11, "actionBarMode":I
    iput v11, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    .line 303
    packed-switch v11, :pswitch_data_118

    .line 316
    .end local v11    # "actionBarMode":I
    :cond_99
    :goto_99
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->setContentView(I)V

    .line 317
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/TermViewFlipper;

    iput-object v0, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    .line 319
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 320
    .local v12, "pm":Landroid/os/PowerManager;
    const/16 v0, 0x1a

    const-string v2, "Term"

    invoke-virtual {v12, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 321
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 322
    .local v14, "wm":Landroid/net/wifi/WifiManager;
    const/4 v13, 0x1

    .line 323
    .local v13, "wifiLockMode":I
    sget v0, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_cc

    .line 324
    const/4 v13, 0x3

    .line 326
    :cond_cc
    const-string v0, "Term"

    invoke-virtual {v14, v13, v0}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 328
    invoke-static {p0}, Lhecticman/jsterm/compat/ActivityCompat;->getActionBar(Landroid/app/Activity;)Lhecticman/jsterm/compat/ActionBarCompat;

    move-result-object v10

    .line 329
    .local v10, "actionBar":Lhecticman/jsterm/compat/ActionBarCompat;
    if-eqz v10, :cond_ee

    .line 330
    iput-object v10, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    .line 331
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lhecticman/jsterm/compat/ActionBarCompat;->setNavigationMode(I)V

    .line 332
    const/4 v0, 0x0

    const/16 v2, 0x8

    invoke-virtual {v10, v0, v2}, Lhecticman/jsterm/compat/ActionBarCompat;->setDisplayOptions(II)V

    .line 333
    iget v0, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_ee

    .line 334
    invoke-virtual {v10}, Lhecticman/jsterm/compat/ActionBarCompat;->hide()V

    .line 338
    :cond_ee
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lhecticman/jsterm/Term;->checkHaveFullHwKeyboard(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/Term;->mHaveFullHwKeyboard:Z

    .line 340
    invoke-direct {p0}, Lhecticman/jsterm/Term;->updatePrefs()V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhecticman/jsterm/Term;->mAlreadyStarted:Z

    .line 342
    return-void

    .line 305
    .end local v10    # "actionBar":Lhecticman/jsterm/compat/ActionBarCompat;
    .end local v12    # "pm":Landroid/os/PowerManager;
    .end local v13    # "wifiLockMode":I
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v11    # "actionBarMode":I
    :pswitch_103
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->setTheme(I)V

    goto :goto_99

    .line 308
    :pswitch_10a
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->setTheme(I)V

    goto :goto_99

    .line 311
    :pswitch_111
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->setTheme(I)V

    goto :goto_99

    .line 303
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_103
        :pswitch_10a
        :pswitch_111
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

    .line 808
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 809
    const v0, 0x7f070026

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 810
    const v0, 0x7f070027

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 811
    const/4 v0, 0x1

    const v1, 0x7f070028

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 812
    const v0, 0x7f070029

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 813
    const/4 v0, 0x3

    const v1, 0x7f07002a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 814
    const/4 v0, 0x4

    const v1, 0x7f07002b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 815
    const/4 v0, 0x5

    const v1, 0x7f07002c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 816
    invoke-direct {p0}, Lhecticman/jsterm/Term;->canPaste()Z

    move-result v0

    if-nez v0, :cond_40

    .line 817
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 819
    :cond_40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 614
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 615
    const v0, 0x7f0c000c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lhecticman/jsterm/compat/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 616
    const v0, 0x7f0c000d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v2}, Lhecticman/jsterm/compat/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 617
    return v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 425
    iget-object v0, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v0}, Lhecticman/jsterm/TermViewFlipper;->removeAllViews()V

    .line 426
    iget-object v0, p0, Lhecticman/jsterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->unbindService(Landroid/content/ServiceConnection;)V

    .line 427
    iget-boolean v0, p0, Lhecticman/jsterm/Term;->mStopServiceOnFinish:Z

    if-eqz v0, :cond_17

    .line 428
    iget-object v0, p0, Lhecticman/jsterm/Term;->TSIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lhecticman/jsterm/Term;->stopService(Landroid/content/Intent;)Z

    .line 430
    :cond_17
    iput-object v1, p0, Lhecticman/jsterm/Term;->mTermService:Lhecticman/jsterm/TermService;

    .line 431
    iput-object v1, p0, Lhecticman/jsterm/Term;->mTSConnection:Landroid/content/ServiceConnection;

    .line 432
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 433
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 435
    :cond_28
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 436
    iget-object v0, p0, Lhecticman/jsterm/Term;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 438
    :cond_35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 852
    sget v1, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_c

    const/4 v1, 0x4

    if-ne p1, v1, :cond_c

    .line 857
    iput-boolean v0, p0, Lhecticman/jsterm/Term;->mBackKeyPressed:Z

    .line 860
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

    .line 866
    sparse-switch p1, :sswitch_data_58

    .line 900
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    .line 868
    :sswitch_a
    sget v2, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_15

    .line 869
    iget-boolean v2, p0, Lhecticman/jsterm/Term;->mBackKeyPressed:Z

    if-eqz v2, :cond_9

    .line 874
    iput-boolean v0, p0, Lhecticman/jsterm/Term;->mBackKeyPressed:Z

    .line 876
    :cond_15
    iget v2, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    invoke-virtual {v2}, Lhecticman/jsterm/compat/ActionBarCompat;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 877
    iget-object v0, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Lhecticman/jsterm/compat/ActionBarCompat;->hide()V

    move v0, v1

    .line 878
    goto :goto_9

    .line 880
    :cond_29
    iget-object v2, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v2}, Lhecticman/jsterm/util/TermSettings;->getBackKeyAction()I

    move-result v2

    packed-switch v2, :pswitch_data_62

    goto :goto_9

    .line 882
    :pswitch_33
    iput-boolean v1, p0, Lhecticman/jsterm/Term;->mStopServiceOnFinish:Z

    .line 884
    :pswitch_35
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->finish()V

    move v0, v1

    .line 885
    goto :goto_9

    .line 887
    :pswitch_3a
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doCloseWindow()V

    move v0, v1

    .line 888
    goto :goto_9

    .line 893
    :sswitch_3f
    iget-object v0, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Lhecticman/jsterm/compat/ActionBarCompat;->isShowing()Z

    move-result v0

    if-nez v0, :cond_52

    .line 894
    iget-object v0, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    invoke-virtual {v0}, Lhecticman/jsterm/compat/ActionBarCompat;->show()V

    move v0, v1

    .line 895
    goto :goto_9

    .line 897
    :cond_52
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9

    .line 866
    nop

    :sswitch_data_58
    .sparse-switch
        0x4 -> :sswitch_a
        0x52 -> :sswitch_3f
    .end sparse-switch

    .line 880
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3a
        :pswitch_35
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 758
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x100000

    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    .line 784
    :cond_9
    :goto_9
    return-void

    .line 763
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 768
    const-string v6, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 770
    iget-object v3, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    .line 771
    .local v3, "sessions":Lhecticman/jsterm/util/SessionList;
    invoke-virtual {v3}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 773
    .local v1, "position":I
    invoke-virtual {v3, v1}, Lhecticman/jsterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhecticman/jsterm/emulatorview/TermSession;

    .line 774
    .local v2, "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-direct {p0, v2}, Lhecticman/jsterm/Term;->createEmulatorView(Lhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/TermView;

    move-result-object v5

    .line 776
    .local v5, "view":Lhecticman/jsterm/emulatorview/EmulatorView;
    iget-object v6, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v6, v5}, Lhecticman/jsterm/TermViewFlipper;->addView(Landroid/view/View;)V

    .line 777
    iput v1, p0, Lhecticman/jsterm/Term;->onResumeSelectWindow:I

    goto :goto_9

    .line 778
    .end local v1    # "position":I
    .end local v2    # "session":Lhecticman/jsterm/emulatorview/TermSession;
    .end local v3    # "sessions":Lhecticman/jsterm/util/SessionList;
    .end local v5    # "view":Lhecticman/jsterm/emulatorview/EmulatorView;
    :cond_32
    const-string v6, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 779
    const-string v6, "jackpal.androidterm.private.target_window"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 780
    .local v4, "target":I
    if-ltz v4, :cond_9

    .line 781
    iput v4, p0, Lhecticman/jsterm/Term;->onResumeSelectWindow:I

    goto :goto_9
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 622
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 623
    .local v1, "id":I
    const v2, 0x7f0c0011

    if-ne v1, v2, :cond_1b

    .line 624
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doPreferences()V

    .line 662
    :cond_c
    :goto_c
    iget v2, p0, Lhecticman/jsterm/Term;->mActionBarMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 663
    iget-object v2, p0, Lhecticman/jsterm/Term;->mActionBar:Lhecticman/jsterm/compat/ActionBarCompat;

    invoke-virtual {v2}, Lhecticman/jsterm/compat/ActionBarCompat;->hide()V

    .line 665
    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 625
    :cond_1b
    const v2, 0x7f0c000c

    if-ne v1, v2, :cond_24

    .line 626
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doCreateNewWindow()V

    goto :goto_c

    .line 627
    :cond_24
    const v2, 0x7f0c000d

    if-ne v1, v2, :cond_2d

    .line 628
    invoke-direct {p0}, Lhecticman/jsterm/Term;->confirmCloseWindow()V

    goto :goto_c

    .line 629
    :cond_2d
    const v2, 0x7f0c000e

    if-ne v1, v2, :cond_3e

    .line 630
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lhecticman/jsterm/WindowList;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lhecticman/jsterm/Term;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c

    .line 631
    :cond_3e
    const v2, 0x7f0c0012

    if-ne v1, v2, :cond_64

    .line 632
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 634
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070020

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 635
    const v2, 0x7f07001e

    new-instance v3, Lhecticman/jsterm/Term$6;

    invoke-direct {v3, p0}, Lhecticman/jsterm/Term$6;-><init>(Lhecticman/jsterm/Term;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    const v2, 0x7f07001f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_c

    .line 646
    .end local v0    # "dlg":Landroid/app/AlertDialog$Builder;
    :cond_64
    const v2, 0x7f0c0013

    if-ne v1, v2, :cond_6d

    .line 647
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doEmailTranscript()V

    goto :goto_c

    .line 648
    :cond_6d
    const v2, 0x7f0c0014

    if-ne v1, v2, :cond_76

    .line 649
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doCaptureScreen()V

    goto :goto_c

    .line 650
    :cond_76
    const v2, 0x7f0c0010

    if-ne v1, v2, :cond_7f

    .line 651
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doDocumentKeys()V

    goto :goto_c

    .line 652
    :cond_7f
    const v2, 0x7f0c000f

    if-ne v1, v2, :cond_c

    .line 653
    invoke-direct {p0}, Lhecticman/jsterm/Term;->doToggleSoftKeyboard()V

    goto :goto_c
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 559
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 561
    iget-object v1, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v1}, Lhecticman/jsterm/TermViewFlipper;->onPause()V

    .line 562
    iget-object v1, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    if-eqz v1, :cond_23

    .line 563
    iget-object v1, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v1, p0}, Lhecticman/jsterm/util/SessionList;->removeCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)Z

    .line 564
    iget-object v1, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    if-eqz v1, :cond_23

    .line 565
    iget-object v1, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    iget-object v2, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    invoke-virtual {v1, v2}, Lhecticman/jsterm/util/SessionList;->removeCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)Z

    .line 566
    iget-object v1, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    iget-object v2, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    invoke-virtual {v1, v2}, Lhecticman/jsterm/TermViewFlipper;->removeCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 570
    :cond_23
    sget v1, Lhecticman/jsterm/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2b

    .line 574
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhecticman/jsterm/Term;->mBackKeyPressed:Z

    .line 580
    :cond_2b
    iget-object v1, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v1}, Lhecticman/jsterm/TermViewFlipper;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 581
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Lhecticman/jsterm/Term$5;

    invoke-direct {v1, p0, v0}, Lhecticman/jsterm/Term$5;-><init>(Lhecticman/jsterm/Term;Landroid/os/IBinder;)V

    .line 587
    invoke-virtual {v1}, Lhecticman/jsterm/Term$5;->start()V

    .line 588
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 802
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 526
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 528
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    if-eqz v2, :cond_1e

    .line 529
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v2, p0}, Lhecticman/jsterm/util/SessionList;->addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 530
    iget-object v2, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    if-eqz v2, :cond_1e

    .line 531
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    iget-object v3, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    invoke-virtual {v2, v3}, Lhecticman/jsterm/util/SessionList;->addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 532
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    iget-object v3, p0, Lhecticman/jsterm/Term;->mWinListAdapter:Lhecticman/jsterm/WindowListAdapter;

    invoke-virtual {v2, v3}, Lhecticman/jsterm/TermViewFlipper;->addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V

    .line 535
    :cond_1e
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v2}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v2

    iget-object v3, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v3}, Lhecticman/jsterm/TermViewFlipper;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2}, Lhecticman/jsterm/TermViewFlipper;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_5d

    .line 546
    .end local v0    # "i":I
    :cond_39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lhecticman/jsterm/Term;->mPrefs:Landroid/content/SharedPreferences;

    .line 547
    iget-object v2, p0, Lhecticman/jsterm/Term;->mSettings:Lhecticman/jsterm/util/TermSettings;

    iget-object v3, p0, Lhecticman/jsterm/Term;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3}, Lhecticman/jsterm/util/TermSettings;->readPrefs(Landroid/content/SharedPreferences;)V

    .line 548
    invoke-direct {p0}, Lhecticman/jsterm/Term;->updatePrefs()V

    .line 550
    iget v2, p0, Lhecticman/jsterm/Term;->onResumeSelectWindow:I

    if-ltz v2, :cond_57

    .line 551
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    iget v3, p0, Lhecticman/jsterm/Term;->onResumeSelectWindow:I

    invoke-virtual {v2, v3}, Lhecticman/jsterm/TermViewFlipper;->setDisplayedChild(I)V

    .line 552
    const/4 v2, -0x1

    iput v2, p0, Lhecticman/jsterm/Term;->onResumeSelectWindow:I

    .line 554
    :cond_57
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2}, Lhecticman/jsterm/TermViewFlipper;->onResume()V

    .line 555
    return-void

    .line 537
    .restart local v0    # "i":I
    :cond_5d
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2, v0}, Lhecticman/jsterm/TermViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 538
    .local v1, "v":Lhecticman/jsterm/emulatorview/EmulatorView;
    iget-object v2, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->getTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhecticman/jsterm/util/SessionList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 539
    invoke-virtual {v1}, Lhecticman/jsterm/emulatorview/EmulatorView;->onPause()V

    .line 540
    iget-object v2, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v2, v1}, Lhecticman/jsterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    .line 541
    add-int/lit8 v0, v0, -0x1

    .line 536
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_31
.end method

.method public onUpdate()V
    .registers 6

    .prologue
    .line 906
    iget-object v1, p0, Lhecticman/jsterm/Term;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    .line 907
    .local v1, "sessions":Lhecticman/jsterm/util/SessionList;
    if-nez v1, :cond_5

    .line 924
    :cond_4
    :goto_4
    return-void

    .line 911
    :cond_5
    invoke-virtual {v1}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 912
    const/4 v3, 0x1

    iput-boolean v3, p0, Lhecticman/jsterm/Term;->mStopServiceOnFinish:Z

    .line 913
    invoke-virtual {p0}, Lhecticman/jsterm/Term;->finish()V

    goto :goto_4

    .line 914
    :cond_12
    invoke-virtual {v1}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v3

    iget-object v4, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v4}, Lhecticman/jsterm/TermViewFlipper;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 915
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v3, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v3}, Lhecticman/jsterm/TermViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 916
    iget-object v3, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v3, v0}, Lhecticman/jsterm/TermViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lhecticman/jsterm/emulatorview/EmulatorView;

    .line 917
    .local v2, "v":Lhecticman/jsterm/emulatorview/EmulatorView;
    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->getTermSession()Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v3

    invoke-virtual {v1, v3}, Lhecticman/jsterm/util/SessionList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 918
    invoke-virtual {v2}, Lhecticman/jsterm/emulatorview/EmulatorView;->onPause()V

    .line 919
    iget-object v3, p0, Lhecticman/jsterm/Term;->mViewFlipper:Lhecticman/jsterm/TermViewFlipper;

    invoke-virtual {v3, v2}, Lhecticman/jsterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    .line 920
    add-int/lit8 v0, v0, -0x1

    .line 915
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method
