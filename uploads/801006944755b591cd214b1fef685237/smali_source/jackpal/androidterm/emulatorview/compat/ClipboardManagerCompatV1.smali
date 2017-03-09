.class public Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV1;
.super Ljava/lang/Object;
.source "ClipboardManagerCompatV1.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;


# instance fields
.field private final clip:Landroid/text/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV1;->clip:Landroid/text/ClipboardManager;

    .line 13
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV1;->clip:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV1;->clip:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 27
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV1;->clip:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
