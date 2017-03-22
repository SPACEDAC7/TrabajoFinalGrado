.class public Lhecticman/jsterm/util/TermSettings;
.super Ljava/lang/Object;
.source "TermSettings.java"


# static fields
.field private static final ACTIONBAR_KEY:Ljava/lang/String; = "actionbar"

.field public static final ACTION_BAR_MODE_ALWAYS_HIDES:I = 0x3

.field public static final ACTION_BAR_MODE_ALWAYS_VISIBLE:I = 0x1

.field public static final ACTION_BAR_MODE_HIDES:I = 0x2

.field private static final ACTION_BAR_MODE_MAX:I = 0x3

.field public static final ACTION_BAR_MODE_NONE:I = 0x0

.field public static final AMBER:I = -0x49af

.field private static final BACKACTION_KEY:Ljava/lang/String; = "backaction"

.field public static final BACK_KEY_CLOSES_ACTIVITY:I = 0x2

.field public static final BACK_KEY_CLOSES_WINDOW:I = 0x1

.field private static final BACK_KEY_MAX:I = 0x4

.field public static final BACK_KEY_SENDS_ESC:I = 0x3

.field public static final BACK_KEY_SENDS_TAB:I = 0x4

.field public static final BACK_KEY_STOPS_SERVICE:I = 0x0

.field private static final BASIC_COLOR_KEY:Ljava/lang/String; = "basic_color"

.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xcbb143

.field private static final CLOSEONEXIT_KEY:Ljava/lang/String; = "close_window_on_process_exit"

.field public static final COLOR_SCHEMES:[[I

.field private static final CONTROLKEY_KEY:Ljava/lang/String; = "controlkey"

.field public static final CONTROL_KEY_ID_NONE:I = 0x7

.field public static final CONTROL_KEY_SCHEMES:[I

.field private static final CURSORBLINK_KEY:Ljava/lang/String; = "cursorblink"

.field private static final CURSORSTYLE_KEY:Ljava/lang/String; = "cursorstyle"

.field private static final FNKEY_KEY:Ljava/lang/String; = "fnkey"

.field public static final FN_KEY_ID_NONE:I = 0x7

.field public static final FN_KEY_SCHEMES:[I

.field private static final FONTSIZE_KEY:Ljava/lang/String; = "fontsize"

.field public static final GREEN:I = -0xff0100

.field public static final HOLO_BLUE:I = -0xcc4a1b

.field private static final IME_KEY:Ljava/lang/String; = "ime"

.field private static final INITIALCOMMAND_KEY:Ljava/lang/String; = "initialcommand"

.field public static final KEYCODE_NONE:I = -0x1

.field private static final PATHEXTENSIONS_KEY:Ljava/lang/String; = "do_path_extensions"

.field private static final PATHPREPEND_KEY:Ljava/lang/String; = "allow_prepend_path"

.field public static final RED:I = -0xfeed

.field private static final SDCARD_KEY:Ljava/lang/String; = "sdcard"

.field private static final SHELL_KEY:Ljava/lang/String; = "shell"

.field private static final SPECIFIC_BACK_COLOR_KEY:Ljava/lang/String; = "specific_back_color"

.field public static SPECIFIC_COLOR_SCHEMES:[I = null

.field private static final SPECIFIC_FORE_COLOR_KEY:Ljava/lang/String; = "specific_fore_color"

.field private static final STATUSBAR_KEY:Ljava/lang/String; = "statusbar"

.field private static final TERMTYPE_KEY:Ljava/lang/String; = "termtype"

.field private static final USE_SPECIFIC_COLOR_KEY:Ljava/lang/String; = "use_specific_color"

.field private static final UTF8_KEY:Ljava/lang/String; = "utf8_by_default"

.field private static final VERIFYPATH_KEY:Ljava/lang/String; = "verify_path"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "wakelock"

.field public static final WHITE:I = -0x1

.field private static final WIFILOCK_KEY:Ljava/lang/String; = "wifilock"


# instance fields
.field private mActionBarMode:I

.field private mAllowPathPrepend:Z

.field private mAppendPath:Ljava/lang/String;

.field private mBackKeyAction:I

.field private mBasicColorId:I

.field private mCloseOnExit:Z

.field private mColorPrefs:Landroid/content/SharedPreferences;

.field private mControlKeyId:I

.field private mCursorBlink:I

.field private mCursorStyle:I

.field private mDoPathExtensions:Z

.field private mFailsafeShell:Ljava/lang/String;

.field private mFnKeyId:I

.field private mFontSize:I

.field private mInitialCommand:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrependPath:Ljava/lang/String;

.field private mSDCard:I

.field private mShell:Ljava/lang/String;

.field private mSpecificBackColorId:I

.field private mSpecificForeColorId:I

.field private mStatusBar:Z

.field private mTermType:Ljava/lang/String;

.field private mUTF8ByDefault:Z

.field private mUseCookedIME:I

.field private mUseSpecificColor:Z

.field private mVerifyPath:Z

.field private mWakeLock:Z

.field private mWifiLock:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x1000000

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [[I

    .line 99
    new-array v1, v4, [I

    aput v7, v1, v5

    const/4 v2, 0x2

    const/4 v3, 0x7

    aput v3, v1, v2

    const/4 v2, -0x1

    aput v2, v1, v6

    aput-object v1, v0, v8

    .line 100
    new-array v1, v4, [I

    const/4 v2, 0x7

    aput v2, v1, v8

    const/4 v2, -0x1

    aput v2, v1, v5

    aput v7, v1, v6

    aput-object v1, v0, v5

    const/4 v1, 0x2

    .line 101
    new-array v2, v4, [I

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    .line 102
    new-array v1, v4, [I

    const/4 v2, 0x2

    aput v2, v1, v8

    const v2, -0xff0100

    aput v2, v1, v5

    aput v7, v1, v6

    aput-object v1, v0, v6

    .line 103
    new-array v1, v4, [I

    aput v6, v1, v8

    const/16 v2, -0x49af

    aput v2, v1, v5

    aput v7, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x5

    .line 104
    new-array v2, v4, [I

    aput v5, v2, v8

    const v3, -0xfeed

    aput v3, v2, v5

    aput v7, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 105
    new-array v2, v4, [I

    aput v4, v2, v8

    const v3, -0xcc4a1b

    aput v3, v2, v5

    aput v7, v2, v6

    aput-object v2, v0, v1

    .line 98
    sput-object v0, Lhecticman/jsterm/util/TermSettings;->COLOR_SCHEMES:[[I

    .line 108
    new-array v0, v4, [I

    sput-object v0, Lhecticman/jsterm/util/TermSettings;->SPECIFIC_COLOR_SCHEMES:[I

    .line 120
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Lhecticman/jsterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    .line 132
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, Lhecticman/jsterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    .line 30
    return-void

    .line 101
    nop

    :array_7a
    .array-data 4
        0x7
        -0x1
        0x4
        -0xcbb143
    .end array-data

    .line 120
    :array_86
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

    .line 132
    :array_9a
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

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "colorPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lhecticman/jsterm/util/TermSettings;->mColorPrefs:Landroid/content/SharedPreferences;

    .line 152
    invoke-direct {p0, p1}, Lhecticman/jsterm/util/TermSettings;->readDefaultPrefs(Landroid/content/res/Resources;)V

    .line 153
    invoke-virtual {p0, p2}, Lhecticman/jsterm/util/TermSettings;->readPrefs(Landroid/content/SharedPreferences;)V

    .line 154
    return-void
.end method

.method private readBooleanPref(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 245
    const-string v0, "use_specific_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 246
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 249
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mColorPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_e
.end method

.method private readDefaultPrefs(Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/16 v2, 0x10

    .line 157
    const/high16 v0, 0x7f070000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mSDCard:I

    .line 158
    const/high16 v0, 0x7f080000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mWakeLock:Z

    .line 159
    const v0, 0x7f080001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mWifiLock:Z

    .line 161
    const v0, 0x7f080002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mStatusBar:Z

    .line 162
    const/high16 v0, 0x7f090000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mActionBarMode:I

    .line 163
    const v0, 0x7f070001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mCursorStyle:I

    .line 164
    const v0, 0x7f070002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mCursorBlink:I

    .line 165
    const v0, 0x7f070003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mFontSize:I

    .line 166
    const v0, 0x7f070004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mBasicColorId:I

    .line 167
    const v0, 0x7f070005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mSpecificForeColorId:I

    .line 168
    const v0, 0x7f070006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mSpecificBackColorId:I

    .line 169
    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mUseSpecificColor:Z

    .line 170
    const v0, 0x7f080004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mUTF8ByDefault:Z

    .line 171
    const v0, 0x7f070007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mBackKeyAction:I

    .line 172
    const v0, 0x7f070008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mControlKeyId:I

    .line 173
    const v0, 0x7f070009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mFnKeyId:I

    .line 174
    const v0, 0x7f07000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mUseCookedIME:I

    .line 175
    const v0, 0x7f07000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mShell:Ljava/lang/String;

    .line 177
    const v0, 0x7f07000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    .line 178
    const v0, 0x7f07000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mTermType:Ljava/lang/String;

    .line 179
    const v0, 0x7f080005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mCloseOnExit:Z

    .line 180
    const v0, 0x7f080006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mVerifyPath:Z

    .line 181
    const v0, 0x7f080007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mDoPathExtensions:Z

    .line 182
    const v0, 0x7f080008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mAllowPathPrepend:Z

    .line 183
    return-void
.end method

.method private readIntPref(Ljava/lang/String;II)I
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 218
    :try_start_0
    const-string v3, "specific_fore_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "specific_back_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 220
    iget-object v3, p0, Lhecticman/jsterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1d} :catch_61

    move-result v2

    .line 234
    .local v2, "val":I
    :goto_1e
    const-string v3, "specific_fore_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "specific_back_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 235
    const/4 v3, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 237
    :cond_37
    return v2

    .line 222
    .end local v2    # "val":I
    :cond_38
    :try_start_38
    const-string v3, "basic_color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 224
    iget-object v3, p0, Lhecticman/jsterm/util/TermSettings;->mColorPrefs:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "val":I
    goto :goto_1e

    .line 227
    .end local v2    # "val":I
    :cond_4f
    iget-object v3, p0, Lhecticman/jsterm/util/TermSettings;->mColorPrefs:Landroid/content/SharedPreferences;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "string":Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_5e} :catch_61

    move-result-wide v3

    long-to-int v2, v3

    .restart local v2    # "val":I
    goto :goto_1e

    .line 230
    .end local v1    # "string":Ljava/lang/String;
    .end local v2    # "val":I
    :catch_61
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, p2

    .restart local v2    # "val":I
    goto :goto_1e
.end method

.method private readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public actionBarMode()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mActionBarMode:I

    return v0
.end method

.method public allowPathPrepend()Z
    .registers 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mAllowPathPrepend:Z

    return v0
.end method

.method public backKeySendsCharacter()Z
    .registers 3

    .prologue
    .line 309
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mBackKeyAction:I

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
    .line 357
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mCloseOnExit:Z

    return v0
.end method

.method public defaultToUTF8Mode()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mUTF8ByDefault:Z

    return v0
.end method

.method public doPathExtensions()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mDoPathExtensions:Z

    return v0
.end method

.method public getAppendPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBackKeyAction()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mBackKeyAction:I

    return v0
.end method

.method public getBackKeyCharacter()I
    .registers 2

    .prologue
    .line 313
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mBackKeyAction:I

    packed-switch v0, :pswitch_data_e

    .line 316
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 314
    :pswitch_7
    const/16 v0, 0x1b

    goto :goto_6

    .line 315
    :pswitch_a
    const/16 v0, 0x9

    goto :goto_6

    .line 313
    nop

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_7
        :pswitch_a
    .end packed-switch
.end method

.method public getColorScheme()[I
    .registers 5

    .prologue
    const/4 v3, 0x7

    .line 287
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mUseSpecificColor:Z

    if-eqz v0, :cond_20

    .line 288
    sget-object v0, Lhecticman/jsterm/util/TermSettings;->SPECIFIC_COLOR_SCHEMES:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 289
    sget-object v0, Lhecticman/jsterm/util/TermSettings;->SPECIFIC_COLOR_SCHEMES:[I

    const/4 v1, 0x1

    iget v2, p0, Lhecticman/jsterm/util/TermSettings;->mSpecificForeColorId:I

    aput v2, v0, v1

    .line 290
    sget-object v0, Lhecticman/jsterm/util/TermSettings;->SPECIFIC_COLOR_SCHEMES:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 291
    sget-object v0, Lhecticman/jsterm/util/TermSettings;->SPECIFIC_COLOR_SCHEMES:[I

    const/4 v1, 0x3

    iget v2, p0, Lhecticman/jsterm/util/TermSettings;->mSpecificBackColorId:I

    aput v2, v0, v1

    .line 293
    sget-object v0, Lhecticman/jsterm/util/TermSettings;->SPECIFIC_COLOR_SCHEMES:[I

    .line 296
    :goto_1f
    return-object v0

    :cond_20
    sget-object v0, Lhecticman/jsterm/util/TermSettings;->COLOR_SCHEMES:[[I

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mBasicColorId:I

    aget-object v0, v0, v1

    goto :goto_1f
.end method

.method public getControlKeyCode()I
    .registers 3

    .prologue
    .line 329
    sget-object v0, Lhecticman/jsterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mControlKeyId:I

    aget v0, v0, v1

    return v0
.end method

.method public getControlKeyId()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mControlKeyId:I

    return v0
.end method

.method public getCursorBlink()I
    .registers 2

    .prologue
    .line 279
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mCursorBlink:I

    return v0
.end method

.method public getCursorStyle()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mCursorStyle:I

    return v0
.end method

.method public getFailsafeShell()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mFailsafeShell:Ljava/lang/String;

    return-object v0
.end method

.method public getFnKeyCode()I
    .registers 3

    .prologue
    .line 333
    sget-object v0, Lhecticman/jsterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mFnKeyId:I

    aget v0, v0, v1

    return v0
.end method

.method public getFnKeyId()I
    .registers 2

    .prologue
    .line 325
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mFnKeyId:I

    return v0
.end method

.method public getFontSize()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mFontSize:I

    return v0
.end method

.method public getInitialCommand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getPrependPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    return-object v0
.end method

.method public getShell()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mShell:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreLocation()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mSDCard:I

    return v0
.end method

.method public getTermType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mTermType:Ljava/lang/String;

    return-object v0
.end method

.method public isWakeLock()Z
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mWakeLock:Z

    return v0
.end method

.method public isWifiLock()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mWifiLock:Z

    return v0
.end method

.method public readPrefs(Landroid/content/SharedPreferences;)V
    .registers 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 186
    iput-object p1, p0, Lhecticman/jsterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 187
    const-string v0, "sdcard"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mSDCard:I

    invoke-direct {p0, v0, v1, v4}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mSDCard:I

    .line 188
    const-string v0, "wakelock"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mWakeLock:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mWakeLock:Z

    .line 189
    const-string v0, "wifilock"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mWifiLock:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mWifiLock:Z

    .line 191
    const-string v0, "statusbar"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mStatusBar:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mStatusBar:Z

    .line 192
    const-string v0, "actionbar"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mActionBarMode:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mActionBarMode:I

    .line 195
    const-string v0, "fontsize"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mFontSize:I

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mFontSize:I

    .line 196
    const-string v0, "basic_color"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mBasicColorId:I

    sget-object v2, Lhecticman/jsterm/util/TermSettings;->COLOR_SCHEMES:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mBasicColorId:I

    .line 197
    const-string v0, "specific_fore_color"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mSpecificForeColorId:I

    invoke-direct {p0, v0, v1, v3}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mSpecificForeColorId:I

    .line 198
    const-string v0, "specific_back_color"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mSpecificBackColorId:I

    invoke-direct {p0, v0, v1, v3}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mSpecificBackColorId:I

    .line 199
    const-string v0, "use_specific_color"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mUseSpecificColor:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mUseSpecificColor:Z

    .line 200
    const-string v0, "utf8_by_default"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mUTF8ByDefault:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mUTF8ByDefault:Z

    .line 201
    const-string v0, "backaction"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mBackKeyAction:I

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mBackKeyAction:I

    .line 202
    const-string v0, "controlkey"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mControlKeyId:I

    sget-object v2, Lhecticman/jsterm/util/TermSettings;->CONTROL_KEY_SCHEMES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mControlKeyId:I

    .line 203
    const-string v0, "fnkey"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mFnKeyId:I

    sget-object v2, Lhecticman/jsterm/util/TermSettings;->FN_KEY_SCHEMES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mFnKeyId:I

    .line 204
    const-string v0, "ime"

    iget v1, p0, Lhecticman/jsterm/util/TermSettings;->mUseCookedIME:I

    invoke-direct {p0, v0, v1, v4}, Lhecticman/jsterm/util/TermSettings;->readIntPref(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lhecticman/jsterm/util/TermSettings;->mUseCookedIME:I

    .line 205
    const-string v0, "shell"

    iget-object v1, p0, Lhecticman/jsterm/util/TermSettings;->mShell:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mShell:Ljava/lang/String;

    .line 206
    const-string v0, "initialcommand"

    iget-object v1, p0, Lhecticman/jsterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mInitialCommand:Ljava/lang/String;

    .line 207
    const-string v0, "termtype"

    iget-object v1, p0, Lhecticman/jsterm/util/TermSettings;->mTermType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mTermType:Ljava/lang/String;

    .line 208
    const-string v0, "close_window_on_process_exit"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mCloseOnExit:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mCloseOnExit:Z

    .line 209
    const-string v0, "verify_path"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mVerifyPath:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mVerifyPath:Z

    .line 210
    const-string v0, "do_path_extensions"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mDoPathExtensions:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mDoPathExtensions:Z

    .line 211
    const-string v0, "allow_prepend_path"

    iget-boolean v1, p0, Lhecticman/jsterm/util/TermSettings;->mAllowPathPrepend:Z

    invoke-direct {p0, v0, v1}, Lhecticman/jsterm/util/TermSettings;->readBooleanPref(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mAllowPathPrepend:Z

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lhecticman/jsterm/util/TermSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 213
    return-void
.end method

.method public setAppendPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "appendPath"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lhecticman/jsterm/util/TermSettings;->mAppendPath:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setPrependPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "prependPath"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lhecticman/jsterm/util/TermSettings;->mPrependPath:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public showStatusBar()Z
    .registers 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mStatusBar:Z

    return v0
.end method

.method public useCookedIME()Z
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lhecticman/jsterm/util/TermSettings;->mUseCookedIME:I

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
    .line 361
    iget-boolean v0, p0, Lhecticman/jsterm/util/TermSettings;->mVerifyPath:Z

    return v0
.end method
