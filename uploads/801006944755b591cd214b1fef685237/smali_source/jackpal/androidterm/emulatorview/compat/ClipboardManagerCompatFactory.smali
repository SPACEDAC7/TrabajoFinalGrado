.class public Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatFactory;
.super Ljava/lang/Object;
.source "ClipboardManagerCompatFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getManager(Landroid/content/Context;)Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    sget v0, Ljackpal/androidterm/emulatorview/compat/AndroidCompat;->SDK:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_c

    .line 13
    new-instance v0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV1;-><init>(Landroid/content/Context;)V

    .line 15
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV11;

    invoke-direct {v0, p0}, Ljackpal/androidterm/emulatorview/compat/ClipboardManagerCompatV11;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method
