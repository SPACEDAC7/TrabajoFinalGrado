.class public final Ljackpal/androidterm/RunShortcut;
.super Ljackpal/androidterm/RemoteInterface;
.source "RunShortcut.java"


# static fields
.field public static final ACTION_RUN_SHORTCUT:Ljava/lang/String; = "jackpal.androidterm.RUN_SHORTCUT"

.field public static final EXTRA_SHORTCUT_COMMAND:Ljava/lang/String; = "jackpal.androidterm.iShortcutCommand"

.field public static final EXTRA_WINDOW_HANDLE:Ljava/lang/String; = "jackpal.androidterm.window_handle"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljackpal/androidterm/RemoteInterface;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleIntent()V
    .registers 13

    .prologue
    .line 34
    invoke-virtual {p0}, Ljackpal/androidterm/RunShortcut;->getTermService()Ljackpal/androidterm/TermService;

    move-result-object v8

    .line 35
    .local v8, "service":Ljackpal/androidterm/TermService;
    if-nez v8, :cond_a

    .line 36
    invoke-virtual {p0}, Ljackpal/androidterm/RunShortcut;->finish()V

    .line 81
    :goto_9
    return-void

    .line 40
    :cond_a
    invoke-virtual {p0}, Ljackpal/androidterm/RunShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 41
    .local v6, "myIntent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v9, "jackpal.androidterm.RUN_SHORTCUT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 43
    const-string v9, "jackpal.androidterm.iShortcutCommand"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "encCommand":Ljava/lang/String;
    if-nez v3, :cond_2d

    .line 45
    const-string v9, "Term"

    const-string v10, "No command provided in shortcut!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Ljackpal/androidterm/RunShortcut;->finish()V

    goto :goto_9

    .line 51
    :cond_2d
    invoke-static {p0}, Ljackpal/androidterm/util/ShortcutEncryption;->getKeys(Landroid/content/Context;)Ljackpal/androidterm/util/ShortcutEncryption$Keys;

    move-result-object v5

    .line 52
    .local v5, "keys":Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    if-nez v5, :cond_3e

    .line 54
    const-string v9, "Term"

    const-string v10, "No shortcut encryption keys found!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Ljackpal/androidterm/RunShortcut;->finish()V

    goto :goto_9

    .line 60
    :cond_3e
    :try_start_3e
    invoke-static {v3, v5}, Ljackpal/androidterm/util/ShortcutEncryption;->decrypt(Ljava/lang/String;Ljackpal/androidterm/util/ShortcutEncryption$Keys;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/security/GeneralSecurityException; {:try_start_3e .. :try_end_41} :catch_60

    move-result-object v1

    .line 67
    .local v1, "command":Ljava/lang/String;
    const-string v9, "jackpal.androidterm.window_handle"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "handle":Ljava/lang/String;
    if-eqz v4, :cond_81

    .line 70
    invoke-virtual {p0, v4, v1}, Ljackpal/androidterm/RunShortcut;->appendToWindow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    :goto_4e
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v7, "result":Landroid/content/Intent;
    const-string v9, "jackpal.androidterm.window_handle"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v7}, Ljackpal/androidterm/RunShortcut;->setResult(ILandroid/content/Intent;)V

    .line 80
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "encCommand":Ljava/lang/String;
    .end local v4    # "handle":Ljava/lang/String;
    .end local v5    # "keys":Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    .end local v7    # "result":Landroid/content/Intent;
    :cond_5c
    invoke-virtual {p0}, Ljackpal/androidterm/RunShortcut;->finish()V

    goto :goto_9

    .line 61
    .restart local v3    # "encCommand":Ljava/lang/String;
    .restart local v5    # "keys":Ljackpal/androidterm/util/ShortcutEncryption$Keys;
    :catch_60
    move-exception v2

    .line 62
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const-string v9, "Term"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid shortcut: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Ljackpal/androidterm/RunShortcut;->finish()V

    goto :goto_9

    .line 73
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "handle":Ljava/lang/String;
    :cond_81
    invoke-virtual {p0, v1}, Ljackpal/androidterm/RunShortcut;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4e
.end method
