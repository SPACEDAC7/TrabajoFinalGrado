.class public Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV11;
.super Ljava/lang/Object;
.source "ClipboardManagerCompatV11.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private final clip:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV11;->clip:Landroid/content/ClipboardManager;

    .line 16
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 20
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV11;->clip:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 21
    .local v0, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV11;->clip:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV11;->clip:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    const-string v1, "simple text"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 33
    .local v0, "clipData":Landroid/content/ClipData;
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV11;->clip:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 34
    return-void
.end method
