.class Ljackpal/androidterm/emulatorview/TermKeyListener;
.super Ljava/lang/Object;
.source "TermKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;
    }
.end annotation


# static fields
.field public static final KEYCODE_OFFSET:I = 0xa00000

.field private static final KEYMOD_ALT:I = -0x80000000

.field private static final KEYMOD_CTRL:I = 0x40000000

.field private static final KEYMOD_SCAN:I = 0x10000000

.field private static final KEYMOD_SHIFT:I = 0x20000000

.field private static final LOG_COMBINING_ACCENT:Z = false

.field private static final LOG_KEYS:Z = false

.field private static final LOG_MISC:Z = false

.field private static final SUPPORT_8_BIT_META:Z = false

.field private static final TAG:Ljava/lang/String; = "TermKeyListener"

.field private static mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAltKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

.field private mAltSendsEsc:Z

.field private mAppKeyCodes:[Ljava/lang/String;

.field private mBackKeyCode:I

.field private mCapKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

.field private mCombiningAccent:I

.field private mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

.field private mCursorMode:I

.field private mFnKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

.field private mHardwareControlKey:Z

.field private mKeyCodes:[Ljava/lang/String;

.field private mTermSession:Ljackpal/androidterm/emulatorview/TermSession;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 4
    .param p1, "termSession"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    const/16 v1, 0x100

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    .line 38
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    .line 293
    new-instance v0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;-><init>(Ljackpal/androidterm/emulatorview/TermKeyListener;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    .line 295
    new-instance v0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;-><init>(Ljackpal/androidterm/emulatorview/TermKeyListener;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCapKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    .line 297
    new-instance v0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;-><init>(Ljackpal/androidterm/emulatorview/TermKeyListener;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    .line 299
    new-instance v0, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;-><init>(Ljackpal/androidterm/emulatorview/TermKeyListener;)V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mFnKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    .line 320
    iput-object p1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    .line 321
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->initKeyCodes()V

    .line 322
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->updateCursorMode()V

    .line 323
    return-void
.end method

.method private static getCursorModeHelper(Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;I)I
    .registers 3
    .param p0, "key"    # Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;
    .param p1, "shift"    # I

    .prologue
    .line 649
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->getUIMode()I

    move-result v0

    shl-int/2addr v0, p1

    return v0
.end method

.method private initKeyCodes()V
    .registers 10

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x16

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/16 v4, 0x13

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    .line 42
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;2D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x7fffffeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;3D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x5fffffeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;4D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x40000015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;5D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x60000015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;6D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x3fffffeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;7D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x1fffffeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;8D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;2C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x7fffffea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;3C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x5fffffea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;4C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x40000016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;5C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x60000016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;6C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x3fffffea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;7C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x1fffffea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;8C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;2A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x7fffffed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;3A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x5fffffed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;4A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x40000013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;5A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x60000013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;6A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x3fffffed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;7A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x1fffffed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;8A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;2B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x7fffffec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;3B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x5fffffec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;4B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x40000014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;5B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x60000014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;6B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x3fffffec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;7B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x1fffffec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;8B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[3;2~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x7fffff90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[3;3~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x40000070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[3;5~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x2000007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[2;2~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x7fffff84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[2;3~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x4000007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[2;5~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x4000007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;5H"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x4000007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;5F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, -0x7fffffbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b\r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x40000042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x4000003e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;2P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000084

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;2Q"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;2R"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[1;2S"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[15;2~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[17;2~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x20000089

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[18;2~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x2000008a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[19;2~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x2000008b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[20;2~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    const v1, 0x2000008c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u001b[21;2~"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "\r"

    aput-object v2, v0, v1

    .line 104
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[A"

    aput-object v1, v0, v4

    .line 105
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[B"

    aput-object v1, v0, v5

    .line 106
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[C"

    aput-object v1, v0, v7

    .line 107
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[D"

    aput-object v1, v0, v6

    .line 108
    const-string v0, "vt100"

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->setFnKeys(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x78

    const-string v2, "\u001b[32~"

    aput-object v2, v0, v1

    .line 111
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x79

    const-string v2, "\u001b[34~"

    aput-object v2, v0, v1

    .line 113
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\t"

    aput-object v2, v0, v1

    .line 114
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x42

    const-string v2, "\r"

    aput-object v2, v0, v1

    .line 115
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x6f

    const-string v2, "\u001b"

    aput-object v2, v0, v1

    .line 117
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x7c

    const-string v2, "\u001b[2~"

    aput-object v2, v0, v1

    .line 118
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x70

    const-string v2, "\u001b[3~"

    aput-object v2, v0, v1

    .line 120
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[5~"

    aput-object v1, v0, v8

    .line 121
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x5d

    const-string v2, "\u001b[6~"

    aput-object v2, v0, v1

    .line 122
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x43

    const-string v2, "\u007f"

    aput-object v2, v0, v1

    .line 123
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8f

    const-string v2, "\u001bOP"

    aput-object v2, v0, v1

    .line 124
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9a

    const-string v2, "/"

    aput-object v2, v0, v1

    .line 125
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9b

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 126
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9c

    const-string v2, "-"

    aput-object v2, v0, v1

    .line 127
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9d

    const-string v2, "+"

    aput-object v2, v0, v1

    .line 128
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0xa0

    const-string v2, "\r"

    aput-object v2, v0, v1

    .line 129
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0xa1

    const-string v2, "="

    aput-object v2, v0, v1

    .line 130
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9f

    const-string v2, ","

    aput-object v2, v0, v1

    .line 145
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9e

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x70

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 146
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x90

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x7c

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 147
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x91

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x7b

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 148
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x92

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v0, v1

    .line 149
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x93

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x5d

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 150
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x94

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v1

    .line 151
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x95

    const-string v2, "5"

    aput-object v2, v0, v1

    .line 152
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x96

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    aget-object v2, v2, v7

    aput-object v2, v0, v1

    .line 153
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x97

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x7a

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 154
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x98

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v0, v1

    .line 155
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x99

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    aget-object v2, v2, v8

    aput-object v2, v0, v1

    .line 162
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9a

    const-string v2, "\u001bOo"

    aput-object v2, v0, v1

    .line 163
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9b

    const-string v2, "\u001bOj"

    aput-object v2, v0, v1

    .line 164
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9c

    const-string v2, "\u001bOm"

    aput-object v2, v0, v1

    .line 165
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9d

    const-string v2, "\u001bOk"

    aput-object v2, v0, v1

    .line 166
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0xa0

    const-string v2, "\u001bOM"

    aput-object v2, v0, v1

    .line 167
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0xa1

    const-string v2, "\u001bOX"

    aput-object v2, v0, v1

    .line 168
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9e

    const-string v2, "\u001bOn"

    aput-object v2, v0, v1

    .line 169
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x9f

    const-string v2, "\u001bOl"

    aput-object v2, v0, v1

    .line 170
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x90

    const-string v2, "\u001bOp"

    aput-object v2, v0, v1

    .line 171
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x91

    const-string v2, "\u001bOq"

    aput-object v2, v0, v1

    .line 172
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x92

    const-string v2, "\u001bOr"

    aput-object v2, v0, v1

    .line 173
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x93

    const-string v2, "\u001bOs"

    aput-object v2, v0, v1

    .line 174
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x94

    const-string v2, "\u001bOt"

    aput-object v2, v0, v1

    .line 175
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x95

    const-string v2, "\u001bOu"

    aput-object v2, v0, v1

    .line 176
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x96

    const-string v2, "\u001bOv"

    aput-object v2, v0, v1

    .line 177
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x97

    const-string v2, "\u001bOw"

    aput-object v2, v0, v1

    .line 178
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x98

    const-string v2, "\u001bOx"

    aput-object v2, v0, v1

    .line 179
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x99

    const-string v2, "\u001bOy"

    aput-object v2, v0, v1

    .line 180
    return-void
.end method

.method static isEventFromToggleDevice(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 653
    sget v2, Ljackpal/androidterm/emulatorview/compat/AndroidCompat;->SDK:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_8

    .line 658
    :cond_7
    :goto_7
    return v1

    .line 656
    :cond_8
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-static {v2}, Ljackpal/androidterm/emulatorview/compat/KeyCharacterMapCompat;->wrap(Ljava/lang/Object;)Ljackpal/androidterm/emulatorview/compat/KeyCharacterMapCompat;

    move-result-object v0

    .line 658
    .local v0, "kcm":Ljackpal/androidterm/emulatorview/compat/KeyCharacterMapCompat;
    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/compat/KeyCharacterMapCompat;->getModifierBehaviour()I

    move-result v2

    if-eq v2, v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7
.end method

.method private setFnKeys(Ljava/lang/String;)V
    .registers 12
    .param p1, "termType"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x87

    const/16 v8, 0x86

    const/16 v7, 0x85

    const/16 v6, 0x84

    const/16 v5, 0x83

    .line 371
    const-string v0, "xterm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 372
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x97

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x7a

    const-string v4, "\u001bOH"

    aput-object v4, v2, v3

    aput-object v4, v0, v1

    .line 373
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x91

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x7b

    const-string v4, "\u001bOF"

    aput-object v4, v2, v3

    aput-object v4, v0, v1

    .line 378
    :goto_2e
    const-string v0, "vt100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 379
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOP"

    aput-object v1, v0, v5

    .line 380
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOQ"

    aput-object v1, v0, v6

    .line 381
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOR"

    aput-object v1, v0, v7

    .line 382
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOS"

    aput-object v1, v0, v8

    .line 384
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOt"

    aput-object v1, v0, v9

    .line 385
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x88

    const-string v2, "\u001bOu"

    aput-object v2, v0, v1

    .line 386
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x89

    const-string v2, "\u001bOv"

    aput-object v2, v0, v1

    .line 387
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8a

    const-string v2, "\u001bOl"

    aput-object v2, v0, v1

    .line 388
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8b

    const-string v2, "\u001bOw"

    aput-object v2, v0, v1

    .line 389
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8c

    const-string v2, "\u001bOx"

    aput-object v2, v0, v1

    .line 391
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8d

    const-string v2, "\u001b[23~"

    aput-object v2, v0, v1

    .line 392
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8e

    const-string v2, "\u001b[24~"

    aput-object v2, v0, v1

    .line 422
    :goto_8c
    return-void

    .line 375
    :cond_8d
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x97

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x7a

    const-string v4, "\u001b[1~"

    aput-object v4, v2, v3

    aput-object v4, v0, v1

    .line 376
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x91

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v3, 0x7b

    const-string v4, "\u001b[4~"

    aput-object v4, v2, v3

    aput-object v4, v0, v1

    goto :goto_2e

    .line 393
    :cond_aa
    const-string v0, "linux"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 394
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[[A"

    aput-object v1, v0, v5

    .line 395
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[[B"

    aput-object v1, v0, v6

    .line 396
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[[C"

    aput-object v1, v0, v7

    .line 397
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[[D"

    aput-object v1, v0, v8

    .line 398
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[[E"

    aput-object v1, v0, v9

    .line 399
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x88

    const-string v2, "\u001b[17~"

    aput-object v2, v0, v1

    .line 400
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x89

    const-string v2, "\u001b[18~"

    aput-object v2, v0, v1

    .line 401
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8a

    const-string v2, "\u001b[19~"

    aput-object v2, v0, v1

    .line 402
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8b

    const-string v2, "\u001b[20~"

    aput-object v2, v0, v1

    .line 403
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8c

    const-string v2, "\u001b[21~"

    aput-object v2, v0, v1

    .line 404
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8d

    const-string v2, "\u001b[23~"

    aput-object v2, v0, v1

    .line 405
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8e

    const-string v2, "\u001b[24~"

    aput-object v2, v0, v1

    goto :goto_8c

    .line 409
    :cond_109
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOP"

    aput-object v1, v0, v5

    .line 410
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOQ"

    aput-object v1, v0, v6

    .line 411
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOR"

    aput-object v1, v0, v7

    .line 412
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001bOS"

    aput-object v1, v0, v8

    .line 413
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v1, "\u001b[15~"

    aput-object v1, v0, v9

    .line 414
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x88

    const-string v2, "\u001b[17~"

    aput-object v2, v0, v1

    .line 415
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x89

    const-string v2, "\u001b[18~"

    aput-object v2, v0, v1

    .line 416
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8a

    const-string v2, "\u001b[19~"

    aput-object v2, v0, v1

    .line 417
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8b

    const-string v2, "\u001b[20~"

    aput-object v2, v0, v1

    .line 418
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8c

    const-string v2, "\u001b[21~"

    aput-object v2, v0, v1

    .line 419
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8d

    const-string v2, "\u001b[23~"

    aput-object v2, v0, v1

    .line 420
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x8e

    const-string v2, "\u001b[24~"

    aput-object v2, v0, v1

    goto/16 :goto_8c
.end method

.method private updateCursorMode()V
    .registers 4

    .prologue
    .line 642
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCapKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCursorModeHelper(Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;I)I

    move-result v0

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCursorModeHelper(Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;I)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCursorModeHelper(Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;I)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mFnKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->getCursorModeHelper(Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;I)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCursorMode:I

    .line 646
    return-void
.end method


# virtual methods
.method public getAltSendsEsc()Z
    .registers 2

    .prologue
    .line 740
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltSendsEsc:Z

    return v0
.end method

.method public getCombiningAccent()I
    .registers 2

    .prologue
    .line 634
    iget v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCombiningAccent:I

    return v0
.end method

.method public getCursorMode()I
    .registers 2

    .prologue
    .line 638
    iget v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCursorMode:I

    return v0
.end method

.method public handleControlKey(Z)V
    .registers 3
    .param p1, "down"    # Z

    .prologue
    .line 348
    if-eqz p1, :cond_b

    .line 349
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->onPress()V

    .line 353
    :goto_7
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->updateCursorMode()V

    .line 354
    return-void

    .line 351
    :cond_b
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->onRelease()V

    goto :goto_7
.end method

.method public handleFnKey(Z)V
    .registers 3
    .param p1, "down"    # Z

    .prologue
    .line 357
    if-eqz p1, :cond_b

    .line 358
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mFnKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->onPress()V

    .line 362
    :goto_7
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->updateCursorMode()V

    .line 363
    return-void

    .line 360
    :cond_b
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mFnKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->onRelease()V

    goto :goto_7
.end method

.method public handleHardwareControlKey(Z)V
    .registers 2
    .param p1, "down"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mHardwareControlKey:Z

    .line 335
    return-void
.end method

.method public handleKeyCode(ILandroid/view/KeyEvent;Z)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "appMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "code":Ljava/lang/String;
    if-eqz p2, :cond_4d

    .line 665
    const/4 v1, 0x0

    .line 669
    .local v1, "keyMod":I
    iget-boolean v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mHardwareControlKey:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 670
    :cond_10
    const/high16 v2, 0x40000000

    or-int/2addr v1, v2

    .line 672
    :cond_13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1e

    .line 673
    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    .line 675
    :cond_1e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_29

    .line 676
    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    .line 679
    :cond_29
    sget-object v2, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    or-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "code":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 680
    .restart local v0    # "code":Ljava/lang/String;
    if-nez v0, :cond_4d

    .line 681
    sget-object v2, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyMap:Ljava/util/Map;

    or-int v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "code":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 685
    .end local v1    # "keyMod":I
    .restart local v0    # "code":Ljava/lang/String;
    :cond_4d
    if-nez v0, :cond_62

    if-ltz p1, :cond_62

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_62

    .line 686
    if-eqz p3, :cond_5c

    .line 687
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAppKeyCodes:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 689
    :cond_5c
    if-nez v0, :cond_62

    .line 690
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 694
    :cond_62
    if-eqz v0, :cond_6b

    .line 699
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    invoke-virtual {v2, v0}, Ljackpal/androidterm/emulatorview/TermSession;->write(Ljava/lang/String;)V

    .line 700
    const/4 v2, 0x1

    .line 702
    :goto_6a
    return v2

    :cond_6b
    const/4 v2, 0x0

    goto :goto_6a
.end method

.method public isAltActive()Z
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v0

    return v0
.end method

.method public isCtrlActive()Z
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v0

    return v0
.end method

.method public keyDown(ILandroid/view/KeyEvent;ZZ)V
    .registers 20
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "appMode"    # Z
    .param p4, "allowToggle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual/range {p0 .. p3}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleKeyCode(ILandroid/view/KeyEvent;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 631
    :cond_6
    :goto_6
    :sswitch_6
    return-void

    .line 519
    :cond_7
    const/4 v8, -0x1

    .line 520
    .local v8, "result":I
    const/4 v1, 0x0

    .line 521
    .local v1, "chordedCtrl":Z
    const/4 v9, 0x0

    .line 522
    .local v9, "setHighBit":Z
    sparse-switch p1, :sswitch_data_f4

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    .line 558
    .local v7, "metaState":I
    and-int/lit16 v11, v7, 0x1000

    if-eqz v11, :cond_c6

    const/4 v1, 0x1

    .line 559
    :goto_16
    if-eqz p4, :cond_c9

    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCapKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v11}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v11

    if-eqz v11, :cond_c9

    const/4 v3, 0x1

    .line 561
    .local v3, "effectiveCaps":Z
    :goto_21
    if-eqz p4, :cond_cc

    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v11}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v11

    if-eqz v11, :cond_cc

    const/4 v2, 0x1

    .line 562
    .local v2, "effectiveAlt":Z
    :goto_2c
    and-int/lit16 v6, v7, -0x7001

    .line 563
    .local v6, "effectiveMetaState":I
    if-eqz v3, :cond_32

    .line 564
    or-int/lit8 v6, v6, 0x1

    .line 566
    :cond_32
    if-nez p4, :cond_39

    and-int/lit8 v11, v6, 0x2

    if-eqz v11, :cond_39

    .line 567
    const/4 v2, 0x1

    .line 569
    :cond_39
    if-eqz v2, :cond_50

    .line 570
    iget-boolean v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltSendsEsc:Z

    if-eqz v11, :cond_cf

    .line 571
    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    const/4 v12, 0x1

    new-array v12, v12, [B

    const/4 v13, 0x0

    const/16 v14, 0x1b

    aput-byte v14, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    .line 572
    and-int/lit8 v6, v6, -0x33

    .line 585
    :cond_50
    :goto_50
    const/high16 v11, 0x10000

    and-int/2addr v11, v7

    if-eqz v11, :cond_6c

    .line 586
    iget-boolean v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltSendsEsc:Z

    if-eqz v11, :cond_6c

    .line 587
    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    const/4 v12, 0x1

    new-array v12, v12, [B

    const/4 v13, 0x0

    const/16 v14, 0x1b

    aput-byte v14, v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Ljackpal/androidterm/emulatorview/TermSession;->write([BII)V

    .line 588
    const v11, -0x70001

    and-int/2addr v6, v11

    .line 596
    :cond_6c
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v8

    .line 598
    const/high16 v11, -0x80000000

    and-int/2addr v11, v8

    if-eqz v11, :cond_d3

    .line 602
    const v11, 0x7fffffff

    and-int/2addr v11, v8

    iput v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCombiningAccent:I

    goto :goto_6

    .line 525
    .end local v2    # "effectiveAlt":Z
    .end local v3    # "effectiveCaps":Z
    .end local v6    # "effectiveMetaState":I
    .end local v7    # "metaState":I
    :sswitch_7e
    if-eqz p4, :cond_88

    .line 526
    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v11}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->onPress()V

    .line 527
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->updateCursorMode()V

    .line 618
    :cond_88
    :goto_88
    if-nez v1, :cond_98

    iget-boolean v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mHardwareControlKey:Z

    if-nez v11, :cond_98

    if-eqz p4, :cond_e2

    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v11}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v11

    if-eqz v11, :cond_e2

    :cond_98
    const/4 v4, 0x1

    .line 619
    .local v4, "effectiveControl":Z
    :goto_99
    if-eqz p4, :cond_e4

    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mFnKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v11}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v11

    if-eqz v11, :cond_e4

    const/4 v5, 0x1

    .line 621
    .local v5, "effectiveFn":Z
    :goto_a4
    invoke-virtual {p0, v4, v5, v8}, Ljackpal/androidterm/emulatorview/TermKeyListener;->mapControlChar(ZZI)I

    move-result v8

    .line 623
    const/high16 v11, 0xa00000

    if-lt v8, v11, :cond_e6

    .line 624
    const/high16 v11, 0xa00000

    sub-int v11, v8, v11

    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-virtual {p0, v11, v12, v0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->handleKeyCode(ILandroid/view/KeyEvent;Z)Z

    goto/16 :goto_6

    .line 533
    .end local v4    # "effectiveControl":Z
    .end local v5    # "effectiveFn":Z
    :sswitch_b8
    if-eqz p4, :cond_88

    .line 534
    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCapKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v11}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->onPress()V

    .line 535
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->updateCursorMode()V

    goto :goto_88

    .line 553
    :sswitch_c3
    iget v8, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mBackKeyCode:I

    .line 554
    goto :goto_88

    .line 558
    .restart local v7    # "metaState":I
    :cond_c6
    const/4 v1, 0x0

    goto/16 :goto_16

    .line 559
    :cond_c9
    const/4 v3, 0x0

    goto/16 :goto_21

    .line 561
    .restart local v3    # "effectiveCaps":Z
    :cond_cc
    const/4 v2, 0x0

    goto/16 :goto_2c

    .line 578
    .restart local v2    # "effectiveAlt":Z
    .restart local v6    # "effectiveMetaState":I
    :cond_cf
    or-int/lit8 v6, v6, 0x2

    goto/16 :goto_50

    .line 605
    :cond_d3
    iget v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCombiningAccent:I

    if-eqz v11, :cond_88

    .line 606
    move v10, v8

    .line 607
    .local v10, "unaccentedChar":I
    iget v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCombiningAccent:I

    invoke-static {v11, v10}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v8

    .line 611
    const/4 v11, 0x0

    iput v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCombiningAccent:I

    goto :goto_88

    .line 618
    .end local v2    # "effectiveAlt":Z
    .end local v3    # "effectiveCaps":Z
    .end local v6    # "effectiveMetaState":I
    .end local v7    # "metaState":I
    .end local v10    # "unaccentedChar":I
    :cond_e2
    const/4 v4, 0x0

    goto :goto_99

    .line 619
    .restart local v4    # "effectiveControl":Z
    :cond_e4
    const/4 v5, 0x0

    goto :goto_a4

    .line 625
    .restart local v5    # "effectiveFn":Z
    :cond_e6
    if-ltz v8, :cond_6

    .line 626
    if-eqz v9, :cond_ec

    .line 627
    or-int/lit16 v8, v8, 0x80

    .line 629
    :cond_ec
    iget-object v11, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mTermSession:Ljackpal/androidterm/emulatorview/TermSession;

    invoke-virtual {v11, v8}, Ljackpal/androidterm/emulatorview/TermSession;->write(I)V

    goto/16 :goto_6

    .line 522
    nop

    :sswitch_data_f4
    .sparse-switch
        0x4 -> :sswitch_c3
        0x39 -> :sswitch_7e
        0x3a -> :sswitch_7e
        0x3b -> :sswitch_b8
        0x3c -> :sswitch_b8
        0x71 -> :sswitch_6
        0x72 -> :sswitch_6
        0x73 -> :sswitch_6
        0x77 -> :sswitch_6
    .end sparse-switch
.end method

.method public keyUp(ILandroid/view/KeyEvent;)V
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 711
    invoke-static {p2}, Ljackpal/androidterm/emulatorview/TermKeyListener;->isEventFromToggleDevice(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 712
    .local v0, "allowToggle":Z
    sparse-switch p1, :sswitch_data_1e

    .line 737
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 715
    :sswitch_8
    if-eqz v0, :cond_7

    .line 716
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->onRelease()V

    .line 717
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->updateCursorMode()V

    goto :goto_7

    .line 722
    :sswitch_13
    if-eqz v0, :cond_7

    .line 723
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCapKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->onRelease()V

    .line 724
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->updateCursorMode()V

    goto :goto_7

    .line 712
    :sswitch_data_1e
    .sparse-switch
        0x39 -> :sswitch_8
        0x3a -> :sswitch_8
        0x3b -> :sswitch_13
        0x3c -> :sswitch_13
        0x71 -> :sswitch_7
        0x72 -> :sswitch_7
    .end sparse-switch
.end method

.method public mapControlChar(I)I
    .registers 4
    .param p1, "ch"    # I

    .prologue
    .line 425
    iget-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mHardwareControlKey:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v0}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_c
    const/4 v0, 0x1

    :goto_d
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mFnKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->isActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->mapControlChar(ZZI)I

    move-result v0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public mapControlChar(ZZI)I
    .registers 10
    .param p1, "control"    # Z
    .param p2, "fn"    # Z
    .param p3, "ch"    # I

    .prologue
    const/16 v5, 0x61

    const/16 v4, 0x41

    const/16 v3, 0x39

    const/16 v2, 0x30

    .line 429
    move v0, p3

    .line 430
    .local v0, "result":I
    if-eqz p1, :cond_91

    .line 432
    if-lt v0, v5, :cond_31

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_31

    .line 433
    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v1, v1, 0x1

    int-to-char v0, v1

    .line 494
    :cond_16
    :goto_16
    const/4 v1, -0x1

    if-le v0, v1, :cond_30

    .line 495
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->adjustAfterKeypress()V

    .line 496
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mCapKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->adjustAfterKeypress()V

    .line 497
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mControlKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->adjustAfterKeypress()V

    .line 498
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mFnKey:Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;

    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermKeyListener$ModifierKey;->adjustAfterKeypress()V

    .line 499
    invoke-direct {p0}, Ljackpal/androidterm/emulatorview/TermKeyListener;->updateCursorMode()V

    .line 502
    :cond_30
    return v0

    .line 434
    :cond_31
    if-lt v0, v4, :cond_3d

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_3d

    .line 435
    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v1, v1, 0x1

    int-to-char v0, v1

    goto :goto_16

    .line 436
    :cond_3d
    const/16 v1, 0x20

    if-eq v0, v1, :cond_45

    const/16 v1, 0x32

    if-ne v0, v1, :cond_47

    .line 437
    :cond_45
    const/4 v0, 0x0

    goto :goto_16

    .line 438
    :cond_47
    const/16 v1, 0x5b

    if-eq v0, v1, :cond_4f

    const/16 v1, 0x33

    if-ne v0, v1, :cond_52

    .line 439
    :cond_4f
    const/16 v0, 0x1b

    goto :goto_16

    .line 440
    :cond_52
    const/16 v1, 0x5c

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x34

    if-ne v0, v1, :cond_5d

    .line 441
    :cond_5a
    const/16 v0, 0x1c

    goto :goto_16

    .line 442
    :cond_5d
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_65

    const/16 v1, 0x35

    if-ne v0, v1, :cond_68

    .line 443
    :cond_65
    const/16 v0, 0x1d

    goto :goto_16

    .line 444
    :cond_68
    const/16 v1, 0x5e

    if-eq v0, v1, :cond_70

    const/16 v1, 0x36

    if-ne v0, v1, :cond_73

    .line 445
    :cond_70
    const/16 v0, 0x1e

    goto :goto_16

    .line 446
    :cond_73
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_7b

    const/16 v1, 0x37

    if-ne v0, v1, :cond_7e

    .line 447
    :cond_7b
    const/16 v0, 0x1f

    goto :goto_16

    .line 448
    :cond_7e
    const/16 v1, 0x38

    if-ne v0, v1, :cond_85

    .line 449
    const/16 v0, 0x7f

    goto :goto_16

    .line 450
    :cond_85
    if-ne v0, v3, :cond_8b

    .line 451
    const v0, 0xa0008d

    goto :goto_16

    .line 452
    :cond_8b
    if-ne v0, v2, :cond_16

    .line 453
    const v0, 0xa0008e

    goto :goto_16

    .line 455
    :cond_91
    if-eqz p2, :cond_16

    .line 456
    const/16 v1, 0x77

    if-eq v0, v1, :cond_9b

    const/16 v1, 0x57

    if-ne v0, v1, :cond_a0

    .line 457
    :cond_9b
    const v0, 0xa00013

    goto/16 :goto_16

    .line 458
    :cond_a0
    if-eq v0, v5, :cond_a4

    if-ne v0, v4, :cond_a9

    .line 459
    :cond_a4
    const v0, 0xa00015

    goto/16 :goto_16

    .line 460
    :cond_a9
    const/16 v1, 0x73

    if-eq v0, v1, :cond_b1

    const/16 v1, 0x53

    if-ne v0, v1, :cond_b6

    .line 461
    :cond_b1
    const v0, 0xa00014

    goto/16 :goto_16

    .line 462
    :cond_b6
    const/16 v1, 0x64

    if-eq v0, v1, :cond_be

    const/16 v1, 0x44

    if-ne v0, v1, :cond_c3

    .line 463
    :cond_be
    const v0, 0xa00016

    goto/16 :goto_16

    .line 464
    :cond_c3
    const/16 v1, 0x70

    if-eq v0, v1, :cond_cb

    const/16 v1, 0x50

    if-ne v0, v1, :cond_d0

    .line 465
    :cond_cb
    const v0, 0xa0005c

    goto/16 :goto_16

    .line 466
    :cond_d0
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_d8

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_dd

    .line 467
    :cond_d8
    const v0, 0xa0005d

    goto/16 :goto_16

    .line 468
    :cond_dd
    const/16 v1, 0x74

    if-eq v0, v1, :cond_e5

    const/16 v1, 0x54

    if-ne v0, v1, :cond_ea

    .line 469
    :cond_e5
    const v0, 0xa0003d

    goto/16 :goto_16

    .line 470
    :cond_ea
    const/16 v1, 0x6c

    if-eq v0, v1, :cond_f2

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_f6

    .line 471
    :cond_f2
    const/16 v0, 0x7c

    goto/16 :goto_16

    .line 472
    :cond_f6
    const/16 v1, 0x75

    if-eq v0, v1, :cond_fe

    const/16 v1, 0x55

    if-ne v0, v1, :cond_102

    .line 473
    :cond_fe
    const/16 v0, 0x5f

    goto/16 :goto_16

    .line 474
    :cond_102
    const/16 v1, 0x65

    if-eq v0, v1, :cond_10a

    const/16 v1, 0x45

    if-ne v0, v1, :cond_10e

    .line 475
    :cond_10a
    const/16 v0, 0x1b

    goto/16 :goto_16

    .line 476
    :cond_10e
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_116

    .line 477
    const/16 v0, 0x1c

    goto/16 :goto_16

    .line 478
    :cond_116
    if-le v0, v2, :cond_124

    if-gt v0, v3, :cond_124

    .line 480
    const/high16 v1, 0xa00000

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x83

    add-int/lit8 v1, v1, -0x1

    int-to-char v0, v1

    goto/16 :goto_16

    .line 481
    :cond_124
    if-ne v0, v2, :cond_12b

    .line 482
    const v0, 0xa0008c

    goto/16 :goto_16

    .line 483
    :cond_12b
    const/16 v1, 0x69

    if-eq v0, v1, :cond_133

    const/16 v1, 0x49

    if-ne v0, v1, :cond_138

    .line 484
    :cond_133
    const v0, 0xa0007c

    goto/16 :goto_16

    .line 485
    :cond_138
    const/16 v1, 0x78

    if-eq v0, v1, :cond_140

    const/16 v1, 0x58

    if-ne v0, v1, :cond_145

    .line 486
    :cond_140
    const v0, 0xa00070

    goto/16 :goto_16

    .line 487
    :cond_145
    const/16 v1, 0x68

    if-eq v0, v1, :cond_14d

    const/16 v1, 0x48

    if-ne v0, v1, :cond_152

    .line 488
    :cond_14d
    const v0, 0xa0007a

    goto/16 :goto_16

    .line 489
    :cond_152
    const/16 v1, 0x66

    if-eq v0, v1, :cond_15a

    const/16 v1, 0x46

    if-ne v0, v1, :cond_16

    .line 490
    :cond_15a
    const v0, 0xa0007b

    goto/16 :goto_16
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mHardwareControlKey:Z

    .line 341
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 345
    return-void
.end method

.method public setAltSendsEsc(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mAltSendsEsc:Z

    .line 331
    return-void
.end method

.method public setBackKeyCharacter(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 326
    iput p1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mBackKeyCode:I

    .line 327
    return-void
.end method

.method public setCursorKeysApplicationMode(Z)V
    .registers 11
    .param p1, "val"    # Z

    .prologue
    const/16 v8, 0x92

    const/16 v7, 0x16

    const/16 v6, 0x15

    const/16 v5, 0x14

    const/16 v4, 0x13

    .line 186
    if-eqz p1, :cond_3b

    .line 187
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x98

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v3, "\u001bOA"

    aput-object v3, v2, v4

    aput-object v3, v0, v1

    .line 188
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v2, "\u001bOB"

    aput-object v2, v1, v5

    aput-object v2, v0, v8

    .line 189
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x96

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v3, "\u001bOC"

    aput-object v3, v2, v7

    aput-object v3, v0, v1

    .line 190
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x94

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v3, "\u001bOD"

    aput-object v3, v2, v6

    aput-object v3, v0, v1

    .line 197
    :goto_3a
    return-void

    .line 192
    :cond_3b
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x98

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v3, "\u001b[A"

    aput-object v3, v2, v4

    aput-object v3, v0, v1

    .line 193
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v2, "\u001b[B"

    aput-object v2, v1, v5

    aput-object v2, v0, v8

    .line 194
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x96

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v3, "\u001b[C"

    aput-object v3, v2, v7

    aput-object v3, v0, v1

    .line 195
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const/16 v1, 0x94

    iget-object v2, p0, Ljackpal/androidterm/emulatorview/TermKeyListener;->mKeyCodes:[Ljava/lang/String;

    const-string v3, "\u001b[D"

    aput-object v3, v2, v6

    aput-object v3, v0, v1

    goto :goto_3a
.end method

.method public setTermType(Ljava/lang/String;)V
    .registers 2
    .param p1, "termType"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/TermKeyListener;->setFnKeys(Ljava/lang/String;)V

    .line 367
    return-void
.end method
