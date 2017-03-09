.class public final Ljackpal/androidterm/RunScript;
.super Ljackpal/androidterm/RemoteInterface;
.source "RunScript.java"


# static fields
.field private static final ACTION_RUN_SCRIPT:Ljava/lang/String; = "jackpal.androidterm.RUN_SCRIPT"

.field private static final EXTRA_INITIAL_COMMAND:Ljava/lang/String; = "jackpal.androidterm.iInitialCommand"

.field private static final EXTRA_WINDOW_HANDLE:Ljava/lang/String; = "jackpal.androidterm.window_handle"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljackpal/androidterm/RemoteInterface;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleIntent()V
    .registers 11

    .prologue
    .line 38
    invoke-virtual {p0}, Ljackpal/androidterm/RunScript;->getTermService()Ljackpal/androidterm/TermService;

    move-result-object v6

    .line 39
    .local v6, "service":Ljackpal/androidterm/TermService;
    if-nez v6, :cond_a

    .line 40
    invoke-virtual {p0}, Ljackpal/androidterm/RunScript;->finish()V

    .line 86
    :goto_9
    return-void

    .line 44
    :cond_a
    invoke-virtual {p0}, Ljackpal/androidterm/RunScript;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 45
    .local v3, "myIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string v8, "jackpal.androidterm.RUN_SCRIPT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 49
    const-string v8, "jackpal.androidterm.window_handle"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "handle":Ljava/lang/String;
    const/4 v1, 0x0

    .line 55
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 56
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_6a

    .line 58
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_6a

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 61
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 63
    if-nez v1, :cond_41

    const-string v1, ""

    .line 64
    :cond_41
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    invoke-static {v1}, Ljackpal/androidterm/RunScript;->quoteForBash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_4d
    invoke-virtual {v7}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .end local v5    # "s":Ljava/lang/String;
    :cond_6a
    if-nez v1, :cond_72

    const-string v8, "jackpal.androidterm.iInitialCommand"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_72
    if-eqz v2, :cond_8a

    .line 73
    invoke-virtual {p0, v2, v1}, Ljackpal/androidterm/RunScript;->appendToWindow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    :goto_78
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v4, "result":Landroid/content/Intent;
    const-string v8, "jackpal.androidterm.window_handle"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v4}, Ljackpal/androidterm/RunScript;->setResult(ILandroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Ljackpal/androidterm/RunScript;->finish()V

    goto :goto_9

    .line 76
    .end local v4    # "result":Landroid/content/Intent;
    :cond_8a
    invoke-virtual {p0, v1}, Ljackpal/androidterm/RunScript;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_78

    .line 84
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "handle":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_8f
    invoke-super {p0}, Ljackpal/androidterm/RemoteInterface;->handleIntent()V

    goto/16 :goto_9
.end method
