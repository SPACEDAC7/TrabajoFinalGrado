.class public Ljackpal/androidterm/TermView;
.super Ljackpal/androidterm/emulatorview/EmulatorView;
.source "TermView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljackpal/androidterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Ljackpal/androidterm/emulatorview/TermSession;
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/EmulatorView;-><init>(Landroid/content/Context;Ljackpal/androidterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljackpal/androidterm/TermView;->getTermSession()Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePrefs(Ljackpal/androidterm/util/TermSettings;)V
    .registers 3
    .param p1, "settings"    # Ljackpal/androidterm/util/TermSettings;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljackpal/androidterm/TermView;->updatePrefs(Ljackpal/androidterm/util/TermSettings;Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 51
    return-void
.end method

.method public updatePrefs(Ljackpal/androidterm/util/TermSettings;Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 4
    .param p1, "settings"    # Ljackpal/androidterm/util/TermSettings;
    .param p2, "scheme"    # Ljackpal/androidterm/emulatorview/ColorScheme;

    .prologue
    .line 34
    if-nez p2, :cond_b

    .line 35
    new-instance p2, Ljackpal/androidterm/emulatorview/ColorScheme;

    .end local p2    # "scheme":Ljackpal/androidterm/emulatorview/ColorScheme;
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getColorScheme()[I

    move-result-object v0

    invoke-direct {p2, v0}, Ljackpal/androidterm/emulatorview/ColorScheme;-><init>([I)V

    .line 38
    .restart local p2    # "scheme":Ljackpal/androidterm/emulatorview/ColorScheme;
    :cond_b
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getFontSize()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setTextSize(I)V

    .line 39
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->useCookedIME()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setUseCookedIME(Z)V

    .line 40
    invoke-virtual {p0, p2}, Ljackpal/androidterm/TermView;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 41
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getBackKeyCharacter()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setBackKeyCharacter(I)V

    .line 42
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getAltSendsEscFlag()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setAltSendsEsc(Z)V

    .line 43
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getControlKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setControlKeyCode(I)V

    .line 44
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getFnKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setFnKeyCode(I)V

    .line 45
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getTermType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setTermType(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getMouseTrackingFlag()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setMouseTracking(Z)V

    .line 47
    return-void
.end method
