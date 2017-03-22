.class public Lhecticman/jsterm/TermView;
.super Lhecticman/jsterm/emulatorview/EmulatorView;
.source "TermView.java"


# static fields
.field static final EVENT_TOUCH_MODE_DRAG:I = 0x1

.field static final EVENT_TOUCH_MODE_NONE:I = 0x0

.field static final EVENT_TOUCH_MODE_ZOOM:I = 0x2


# instance fields
.field private mSettings:Lhecticman/jsterm/util/TermSettings;

.field private nTouchMode:I

.field private newDist:F

.field private oldDist:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhecticman/jsterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lhecticman/jsterm/emulatorview/TermSession;
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/high16 v1, 0x3f800000

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lhecticman/jsterm/emulatorview/EmulatorView;-><init>(Landroid/content/Context;Lhecticman/jsterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lhecticman/jsterm/TermView;->nTouchMode:I

    .line 39
    iput v1, p0, Lhecticman/jsterm/TermView;->oldDist:F

    .line 40
    iput v1, p0, Lhecticman/jsterm/TermView;->newDist:F

    .line 46
    return-void
.end method

.method private spacingForTouchZoom(Landroid/view/MotionEvent;)F
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 111
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 112
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/high16 v3, 0x41a00000

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 73
    .local v0, "act":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_52

    .line 105
    :cond_d
    :goto_d
    :pswitch_d
    invoke-super {p0, p1}, Lhecticman/jsterm/emulatorview/EmulatorView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 75
    :pswitch_12
    iget v1, p0, Lhecticman/jsterm/TermView;->nTouchMode:I

    if-ne v1, v2, :cond_d

    .line 76
    invoke-direct {p0, p1}, Lhecticman/jsterm/TermView;->spacingForTouchZoom(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lhecticman/jsterm/TermView;->newDist:F

    .line 78
    iget v1, p0, Lhecticman/jsterm/TermView;->newDist:F

    iget v2, p0, Lhecticman/jsterm/TermView;->oldDist:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2e

    .line 79
    iget v1, p0, Lhecticman/jsterm/TermView;->newDist:F

    iput v1, p0, Lhecticman/jsterm/TermView;->oldDist:F

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lhecticman/jsterm/TermView;->setTextSize(Z)V

    goto :goto_d

    .line 81
    :cond_2e
    iget v1, p0, Lhecticman/jsterm/TermView;->oldDist:F

    iget v2, p0, Lhecticman/jsterm/TermView;->newDist:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_d

    .line 82
    iget v1, p0, Lhecticman/jsterm/TermView;->newDist:F

    iput v1, p0, Lhecticman/jsterm/TermView;->oldDist:F

    .line 83
    invoke-virtual {p0, v4}, Lhecticman/jsterm/TermView;->setTextSize(Z)V

    goto :goto_d

    .line 90
    :pswitch_3f
    iput v4, p0, Lhecticman/jsterm/TermView;->nTouchMode:I

    goto :goto_d

    .line 95
    :pswitch_42
    iput v2, p0, Lhecticman/jsterm/TermView;->nTouchMode:I

    .line 96
    invoke-direct {p0, p1}, Lhecticman/jsterm/TermView;->spacingForTouchZoom(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lhecticman/jsterm/TermView;->newDist:F

    .line 97
    invoke-direct {p0, p1}, Lhecticman/jsterm/TermView;->spacingForTouchZoom(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lhecticman/jsterm/TermView;->oldDist:F

    goto :goto_d

    .line 73
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_42
        :pswitch_3f
    .end packed-switch
.end method

.method public updatePrefs(Lhecticman/jsterm/util/TermSettings;)V
    .registers 3
    .param p1, "settings"    # Lhecticman/jsterm/util/TermSettings;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhecticman/jsterm/TermView;->updatePrefs(Lhecticman/jsterm/util/TermSettings;Lhecticman/jsterm/emulatorview/ColorScheme;)V

    .line 66
    return-void
.end method

.method public updatePrefs(Lhecticman/jsterm/util/TermSettings;Lhecticman/jsterm/emulatorview/ColorScheme;)V
    .registers 5
    .param p1, "settings"    # Lhecticman/jsterm/util/TermSettings;
    .param p2, "scheme"    # Lhecticman/jsterm/emulatorview/ColorScheme;

    .prologue
    .line 49
    if-nez p2, :cond_b

    .line 50
    new-instance p2, Lhecticman/jsterm/emulatorview/ColorScheme;

    .end local p2    # "scheme":Lhecticman/jsterm/emulatorview/ColorScheme;
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getColorScheme()[I

    move-result-object v0

    invoke-direct {p2, v0}, Lhecticman/jsterm/emulatorview/ColorScheme;-><init>([I)V

    .line 53
    .restart local p2    # "scheme":Lhecticman/jsterm/emulatorview/ColorScheme;
    :cond_b
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getFontSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/TermView;->setTextSize(I)V

    .line 54
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getCursorStyle()I

    move-result v0

    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getCursorBlink()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lhecticman/jsterm/TermView;->setCursorStyle(II)V

    .line 55
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->useCookedIME()Z

    move-result v0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/TermView;->setUseCookedIME(Z)V

    .line 56
    invoke-virtual {p0, p2}, Lhecticman/jsterm/TermView;->setColorScheme(Lhecticman/jsterm/emulatorview/ColorScheme;)V

    .line 57
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getBackKeyCharacter()I

    move-result v0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/TermView;->setBackKeyCharacter(I)V

    .line 58
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getControlKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/TermView;->setControlKeyCode(I)V

    .line 59
    invoke-virtual {p1}, Lhecticman/jsterm/util/TermSettings;->getFnKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lhecticman/jsterm/TermView;->setFnKeyCode(I)V

    .line 61
    iput-object p1, p0, Lhecticman/jsterm/TermView;->mSettings:Lhecticman/jsterm/util/TermSettings;

    .line 62
    return-void
.end method
