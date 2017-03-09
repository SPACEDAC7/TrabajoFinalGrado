.class public Ljackpal/androidterm/util/TermSettings;
.super Ljava/lang/Object;
.source "TermSettings.java"


# static fields
.field private static final ACTIONBAR_KEY:Ljava/lang/String; = "actionbar"

.field public static final ACTION_BAR_MODE_ALWAYS_VISIBLE:I = 0x1

.field public static final ACTION_BAR_MODE_HIDES:I = 0x2

.field private static final ACTION_BAR_MODE_MAX:I = 0x2

.field public static final ACTION_BAR_MODE_NONE:I = 0x0

.field private static final ALT_SENDS_ESC:Ljava/lang/String; = "alt_sends_esc"

.field public static final AMBER:I = -0x49af

.field private static final BACKACTION_KEY:Ljava/lang/String; = "backaction"

.field public static final BACK_KEY_CLOSES_ACTIVITY:I = 0x2

.field public static final BACK_KEY_CLOSES_WINDOW:I = 0x1

.field private static final BACK_KEY_MAX:I = 0x4

.field public static final BACK_KEY_SENDS_ESC:I = 0x3

.field public static final BACK_KEY_SENDS_TAB:I = 0x4

.field public static final BACK_KEY_STOPS_SERVICE:I = 0x0

.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xcbb143

.field private static final CLOSEONEXIT_KEY:Ljava/lang/String; = "close_window_on_process_exit"

.field private static final COLOR_KEY:Ljava/lang/String; = "color"

.field public static final COLOR_SCHEMES:[[I

.field private static final CONTROLKEY_KEY:Ljava/lang/String; = "controlkey"

.field public static final CONTROL_KEY_ID_NONE:I = 0x7

.field public static final CONTROL_KEY_SCHEMES:[I

.field private static final FNKEY_KEY:Ljava/lang/String; = "fnkey"

.field public static final FN_KEY_ID_NONE:I = 0x7

.field public static final FN_KEY_SCHEMES:[I

.field private static final FONTSIZE_KEY:Ljava/lang/String; = "fontsize"

.field public static final GREEN:I = -0xff0100

.field public static final HOLO_BLUE:I = -0xcc4a1b

.field private static final HOMEPATH_KEY:Ljava/lang/String; = "home_path"

.field private static final IME_KEY:Ljava/lang/String; = "ime"

.field private static final INITIALCOMMAND_KEY:Ljava/lang/String; = "initialcommand"

.field public static final KEYCODE_NONE:I = -0x1

.field public static final LINUX_CONSOLE_WHITE:I = -0x555556

.field private static final MOUSE_TRACKING:Ljava/lang/String; = "mouse_tracking"

.field private static final ORIENTATION_KEY:Ljava/lang/String; = "orientation"

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final ORIENTATION_UNSPECIFIED:I = 0x0

.field private static final PATHEXTENSIONS_KEY:Ljava/lang/String; = "do_path_extensions"

.field private static final PATHPREPEND_KEY:Ljava/lang/String; = "allow_prepend_path"

.field public static final RED:I = -0xfeed

.field private static final SHELL_KEY:Ljava/lang/String; = "shell"

.field public static final SOLARIZED_BG:I = -0x2091d

.field public static final SOLARIZED_DARK_BG:I = -0xffd4ca

.field public static final SOLARIZED_DARK_FG:I = -0x7c6b6a

.field public static final SOLARIZED_FG:I = -0x9a847d

.field private static final STATUSBAR_KEY:Ljava/lang/String; = "statusbar"

.field private static final TERMTYPE_KEY:Ljava/lang/String; = "termtype"

.field private static final USE_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "use_keyboard_shortcuts"

.field private static final UTF8_KEY:Ljava/lang/String; = "utf8_by_default"

.field private static final VERIFYPATH_KEY:Ljava/lang/String; = "verify_path"

.field public static final WHITE:I = -0x1


# instance fields
.field private mActionBarMode:I

.field private mAllowPathPrepend:Z

.field private mAltSendsEsc:Z

.field private mAppendPath:Ljava/lang/String;

.field private mBackKeyAction:I

.field private mCloseOnExit:Z

.field private mColorId:I

.field private mControlKeyId:I

.field private mCursorBlink:I

.field private mCursorStyle:I

.field private mDoPathExtensions:Z

.field private mFailsafeShell:Ljava/lang/String;

.field private mFnKeyId:I

.field private mFontSize:I

.field private mHomePath:Ljava/lang/String;

.field private mInitialCommand:Ljava/lang/String;

.field private mMouseTracking:Z

.field private mOrientation:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrependPath:Ljava/lang/String;

.field private mShell:Ljava/lang/String;

.field private mStatusBar:I

.field private mTermType:Ljava/lang/String;

.field private mUTF8ByDefault:Z

.field private mUseCookedIME:I

.field private mUseKeyboardShortcuts:Z

.field private mVerifyPath:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    .line 99
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_78

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_a0

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a8

    aput-object v1, v0, v4

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    sput-object v0, Ljackpal/androidterm/util/TermSettings;->COLOR_SCHEMES:[[I

    .line 125
    new-array v0, v4, [I

    fill-array-data v0, :array_b8

    sput-object v0, Ljackpal/androidterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    .line 137
    new-array v0, v4, [I

    fill-array-data v0, :array_cc

    sput-object v0, Ljackpal/androidterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    return-void

    .line 99
    nop

    :array_68
    .array-data 4
        -0x1000000
        -0x1
    .end array-data

    :array_70
    .array-data 4
        -0x1
        -0x1000000
    .end array-data

    :array_78
    .array-data 4
        -0x1
        -0xcbb143
    .end array-data

    :array_80
    .array-data 4
        -0xff0100
        -0x1000000
    .end array-data

    :array_88
    .array-data 4
        -0x49af
        -0x1000000
    .end array-data

    :array_90
    .array-data 4
        -0xfeed
        -0x1000000
    .end array-data

    :array_98
    .array-data 4
        -0xcc4a1b
        -0x1000000
    .end array-data

    :array_a0
    .array-data 4
        -0x9a847d
        -0x2091d
    .end array-data

    :array_a8
    .array-data 4
        -0x7c6b6a
        -0xffd4ca
    .end array-data

    :array_b0
    .array-data 4
        -0x555556
        -0x1000000
    .end array-data

    .line 125
    :array_b8
    .array-data 4
        0x17
        0x4d
        0x39
        0x3a
        0x18
        0x19
        0x1b
        -0x1
    .end array-data

    .line 137
    :array_cc
    .array-data 4
        0x17
        0x4d
        0x39
        0x3a
        0x18
        0x19
        0x1b
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1}, Ljackpal/androidterm/util/TermSettings;->readDefaultPrefs(Landroid/content/res/Resources;)V

    .line 157
    invoke-virtual {p0, p2}, Ljackpal/androidterm/util/TermSettings;->readPrefs(Landroid/content/SharedPreferences;)V

    .line 158
    return-void
.end method

.method private readBooleanPref(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private readDefaultPrefs(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 161
    const v0, 0x7f09004f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mStatusBar:I

    .line 162
    const/high16 v0, 0x7f080000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mActionBarMode:I

    .line 163
    const v0, 0x7f080001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mOrientation:I

    .line 164
    const v0, 0x7f090049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mCursorStyle:I

    .line 165
    const v0, 0x7f090048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mCursorBlink:I

    .line 166
    const v0, 0x7f09004b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mFontSize:I

    .line 167
    const v0, 0x7f090046

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mColorId:I

    .line 168
    const v0, 0x7f060006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUTF8ByDefault:Z

    .line 169
    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    .line 170
    const v0, 0x7f090047

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    .line 171
    const v0, 0x7f09004a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    .line 172
    const v0, 0x7f09004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseCookedIME:I

    .line 173
    const v0, 0x7f09004e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mShell:Ljava/lang/String;

    .line 175
    const v0, 0x7f09004d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    .line 176
    const v0, 0x7f090050

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mTermType:Ljava/lang/String;

    .line 177
    const v0, 0x7f060002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mCloseOnExit:Z

    .line 178
    const v0, 0x7f060007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mVerifyPath:Z

    .line 179
    const v0, 0x7f060003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mDoPathExtensions:Z

    .line 180
    const/high16 v0, 0x7f060000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAllowPathPrepend:Z

    .line 182
    const v0, 0x7f060001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAltSendsEsc:Z

    .line 183
    const v0, 0x7f060004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mMouseTracking:Z

    .line 184
    const v0, 0x7f060005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseKeyboardShortcuts:Z

    .line 185
    return-void
.end method

.method private readIntPref(Ljava/lang/String;II)I
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_18

    move-result v1

    .line 226
    .local v1, "val":I
    :goto_e
    const/4 v2, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 227
    return v1

    .line 223
    .end local v1    # "val":I
    :catch_18
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v1, p2

    .restart local v1    # "val":I
    goto :goto_e
.end method

.method private readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public actionBarMode()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mActionBarMode:I

    return v0
.end method

.method public allowPathPrepend()Z
    .registers 2

    .prologue
    .line 347
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAllowPathPrepend:Z

    return v0
.end method

.method public backKeySendsCharacter()Z
    .registers 3

    .prologue
    .line 275
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public closeWindowOnProcessExit()Z
    .registers 2

    .prologue
    .line 335
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mCloseOnExit:Z

    return v0
.end method

.method public defaultToUTF8Mode()Z
    .registers 2

    .prologue
    .line 267
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUTF8ByDefault:Z

    return v0
.end method

.method public doPathExtensions()Z
    .registers 2

    .prologue
    .line 343
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mDoPathExtensions:Z

    return v0
.end method

.method public getAltSendsEscFlag()Z
    .registers 2

    .prologue
    .line 279
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAltSendsEsc:Z

    return v0
.end method

.method public getAppendPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBackKeyAction()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    return v0
.end method

.method public getBackKeyCharacter()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    packed-switch v0, :pswitch_data_e

    .line 294
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 292
    :pswitch_7
    const/16 v0, 0x1b

    goto :goto_6

    .line 293
    :pswitch_a
    const/16 v0, 0x9

    goto :goto_6

    .line 291
    nop

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public getColorScheme()[I
    .registers 3

    .prologue
    .line 263
    sget-object v0, Ljackpal/androidterm/util/TermSettings;->COLOR_SCHEMES:[[I

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mColorId:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getControlKeyCode()I
    .registers 3

    .prologue
    .line 307
    sget-object v0, Ljackpal/androidterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    aget v0, v0, v1

    return v0
.end method

.method public getControlKeyId()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    return v0
.end method

.method public getCursorBlink()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mCursorBlink:I

    return v0
.end method

.method public getCursorStyle()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mCursorStyle:I

    return v0
.end method

.method public getFailsafeShell()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    return-object v0
.end method

.method public getFnKeyCode()I
    .registers 3

    .prologue
    .line 311
    sget-object v0, Ljackpal/androidterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    aget v0, v0, v1

    return v0
.end method

.method public getFnKeyId()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    return v0
.end method

.method public getFontSize()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mFontSize:I

    return v0
.end method

.method public getHomePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mHomePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInitialCommand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getMouseTrackingFlag()Z
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mMouseTracking:Z

    return v0
.end method

.method public getPrependPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenOrientation()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mOrientation:I

    return v0
.end method

.method public getShell()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mShell:Ljava/lang/String;

    return-object v0
.end method

.method public getTermType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mTermType:Ljava/lang/String;

    return-object v0
.end method

.method public getUseKeyboardShortcutsFlag()Z
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseKeyboardShortcuts:Z

    return v0
.end method

.method public readPrefs(Landroid/content/SharedPreferences;)V
    .registers 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 188
    iput-object p1, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 189
    const-string v0, "statusbar"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mStatusBar:I

    invoke-direct {p0, v0, v1, v3}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mStatusBar:I

    .line 190
    const-string v0, "actionbar"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mActionBarMode:I

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mActionBarMode:I

    .line 191
    const-string v0, "orientation"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mOrientation:I

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mOrientation:I

    .line 194
    const-string v0, "fontsize"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mFontSize:I

    const/16 v2, 0x120

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mFontSize:I

    .line 195
    const-string v0, "color"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mColorId:I

    sget-object v2, Ljackpal/androidterm/util/TermSettings;->COLOR_SCHEMES:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mColorId:I

    .line 196
    const-string v0, "utf8_by_default"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mUTF8ByDefault:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUTF8ByDefault:Z

    .line 197
    const-string v0, "backaction"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mBackKeyAction:I

    .line 198
    const-string v0, "controlkey"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    sget-object v2, Ljackpal/androidterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mControlKeyId:I

    .line 200
    const-string v0, "fnkey"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    sget-object v2, Ljackpal/androidterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mFnKeyId:I

    .line 202
    const-string v0, "ime"

    iget v1, p0, Ljackpal/androidterm/util/TermSettings;->mUseCookedIME:I

    invoke-direct {p0, v0, v1, v3}, Ljackpal/androidterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseCookedIME:I

    .line 203
    const-string v0, "shell"

    iget-object v1, p0, Ljackpal/androidterm/util/TermSettings;->mShell:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mShell:Ljava/lang/String;

    .line 204
    const-string v0, "initialcommand"

    iget-object v1, p0, Ljackpal/androidterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    .line 205
    const-string v0, "termtype"

    iget-object v1, p0, Ljackpal/androidterm/util/TermSettings;->mTermType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mTermType:Ljava/lang/String;

    .line 206
    const-string v0, "close_window_on_process_exit"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mCloseOnExit:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mCloseOnExit:Z

    .line 207
    const-string v0, "verify_path"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mVerifyPath:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mVerifyPath:Z

    .line 208
    const-string v0, "do_path_extensions"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mDoPathExtensions:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mDoPathExtensions:Z

    .line 209
    const-string v0, "allow_prepend_path"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mAllowPathPrepend:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAllowPathPrepend:Z

    .line 210
    const-string v0, "home_path"

    iget-object v1, p0, Ljackpal/androidterm/util/TermSettings;->mHomePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mHomePath:Ljava/lang/String;

    .line 211
    const-string v0, "alt_sends_esc"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mAltSendsEsc:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mAltSendsEsc:Z

    .line 212
    const-string v0, "mouse_tracking"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mMouseTracking:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mMouseTracking:Z

    .line 213
    const-string v0, "use_keyboard_shortcuts"

    iget-boolean v1, p0, Ljackpal/androidterm/util/TermSettings;->mUseKeyboardShortcuts:Z

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseKeyboardShortcuts:Z

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 216
    return-void
.end method

.method public setAppendPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "appendPath"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Ljackpal/androidterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setHomePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "homePath"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Ljackpal/androidterm/util/TermSettings;->mHomePath:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setPrependPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "prependPath"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Ljackpal/androidterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public showStatusBar()Z
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mStatusBar:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public useCookedIME()Z
    .registers 2

    .prologue
    .line 315
    iget v0, p0, Ljackpal/androidterm/util/TermSettings;->mUseCookedIME:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public verifyPath()Z
    .registers 2

    .prologue
    .line 339
    iget-boolean v0, p0, Ljackpal/androidterm/util/TermSettings;->mVerifyPath:Z

    return v0
.end method
