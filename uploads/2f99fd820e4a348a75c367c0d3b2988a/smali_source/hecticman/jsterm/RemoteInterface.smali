.class public Lhecticman/jsterm/RemoteInterface;
.super Landroid/app/Activity;
.source "RemoteInterface.java"


# static fields
.field private static final ACTION_OPEN_NEW_WINDOW:Ljava/lang/String; = "jackpal.androidterm.OPEN_NEW_WINDOW"

.field private static final ACTION_RUN_SCRIPT:Ljava/lang/String; = "jackpal.androidterm.RUN_SCRIPT"

.field private static final EXTRA_INITIAL_COMMAND:Ljava/lang/String; = "jackpal.androidterm.iInitialCommand"

.field private static final EXTRA_WINDOW_HANDLE:Ljava/lang/String; = "jackpal.androidterm.window_handle"

.field static final PRIVACT_OPEN_NEW_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.OPEN_NEW_WINDOW"

.field static final PRIVACT_SWITCH_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.SWITCH_WINDOW"

.field static final PRIVEXTRA_TARGET_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.target_window"


# instance fields
.field private mSettings:Lhecticman/jsterm/util/TermSettings;

.field private mTSConnection:Landroid/content/ServiceConnection;

.field private mTermService:Lhecticman/jsterm/TermService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Lhecticman/jsterm/RemoteInterface$1;

    invoke-direct {v0, p0}, Lhecticman/jsterm/RemoteInterface$1;-><init>(Lhecticman/jsterm/RemoteInterface;)V

    iput-object v0, p0, Lhecticman/jsterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lhecticman/jsterm/RemoteInterface;Lhecticman/jsterm/TermService;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lhecticman/jsterm/RemoteInterface;->mTermService:Lhecticman/jsterm/TermService;

    return-void
.end method

.method static synthetic access$1(Lhecticman/jsterm/RemoteInterface;)V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Lhecticman/jsterm/RemoteInterface;->handleIntent()V

    return-void
.end method

.method private appendToWindow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "handle"    # Ljava/lang/String;
    .param p2, "iInitialCommand"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v3, p0, Lhecticman/jsterm/RemoteInterface;->mTermService:Lhecticman/jsterm/TermService;

    .line 141
    .local v3, "service":Lhecticman/jsterm/TermService;
    invoke-virtual {v3}, Lhecticman/jsterm/TermService;->getSessions()Lhecticman/jsterm/util/SessionList;

    move-result-object v5

    .line 142
    .local v5, "sessions":Lhecticman/jsterm/util/SessionList;
    const/4 v6, 0x0

    .line 144
    .local v6, "target":Lhecticman/jsterm/ShellTermSession;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_8
    invoke-virtual {v5}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v7

    if-lt v1, v7, :cond_15

    .line 153
    :goto_e
    if-nez v6, :cond_2c

    .line 155
    invoke-direct {p0, p2}, Lhecticman/jsterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    .end local p1    # "handle":Ljava/lang/String;
    :goto_14
    return-object p1

    .line 145
    .restart local p1    # "handle":Ljava/lang/String;
    :cond_15
    invoke-virtual {v5, v1}, Lhecticman/jsterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhecticman/jsterm/ShellTermSession;

    .line 146
    .local v4, "session":Lhecticman/jsterm/ShellTermSession;
    invoke-virtual {v4}, Lhecticman/jsterm/ShellTermSession;->getHandle()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "h":Ljava/lang/String;
    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 148
    move-object v6, v4

    .line 149
    goto :goto_e

    .line 144
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 158
    .end local v0    # "h":Ljava/lang/String;
    .end local v4    # "session":Lhecticman/jsterm/ShellTermSession;
    :cond_2c
    if-eqz p2, :cond_36

    .line 159
    invoke-virtual {v6, p2}, Lhecticman/jsterm/ShellTermSession;->write(Ljava/lang/String;)V

    .line 160
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lhecticman/jsterm/ShellTermSession;->write(I)V

    .line 163
    :cond_36
    new-instance v2, Landroid/content/Intent;

    const-string v7, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const-string v7, "jackpal.androidterm.private.target_window"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v2}, Lhecticman/jsterm/RemoteInterface;->startActivity(Landroid/content/Intent;)V

    goto :goto_14
.end method

.method private handleIntent()V
    .registers 7

    .prologue
    .line 80
    iget-object v3, p0, Lhecticman/jsterm/RemoteInterface;->mTermService:Lhecticman/jsterm/TermService;

    .line 81
    .local v3, "service":Lhecticman/jsterm/TermService;
    if-nez v3, :cond_8

    .line 82
    invoke-virtual {p0}, Lhecticman/jsterm/RemoteInterface;->finish()V

    .line 108
    :goto_7
    return-void

    .line 86
    :cond_8
    invoke-virtual {p0}, Lhecticman/jsterm/RemoteInterface;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, "myIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jackpal.androidterm.RUN_SCRIPT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 90
    const-string v4, "jackpal.androidterm.window_handle"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "handle":Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 93
    const-string v4, "jackpal.androidterm.iInitialCommand"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lhecticman/jsterm/RemoteInterface;->appendToWindow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_2a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v2, "result":Landroid/content/Intent;
    const-string v4, "jackpal.androidterm.window_handle"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lhecticman/jsterm/RemoteInterface;->setResult(ILandroid/content/Intent;)V

    .line 106
    .end local v0    # "handle":Ljava/lang/String;
    .end local v2    # "result":Landroid/content/Intent;
    :goto_38
    iget-object v4, p0, Lhecticman/jsterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4}, Lhecticman/jsterm/RemoteInterface;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    invoke-virtual {p0}, Lhecticman/jsterm/RemoteInterface;->finish()V

    goto :goto_7

    .line 96
    .restart local v0    # "handle":Ljava/lang/String;
    :cond_41
    const-string v4, "jackpal.androidterm.iInitialCommand"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lhecticman/jsterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 103
    .end local v0    # "handle":Ljava/lang/String;
    :cond_4c
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lhecticman/jsterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_38
.end method

.method private openNewWindow(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "iInitialCommand"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v3, p0, Lhecticman/jsterm/RemoteInterface;->mTermService:Lhecticman/jsterm/TermService;

    .line 113
    .local v3, "service":Lhecticman/jsterm/TermService;
    iget-object v5, p0, Lhecticman/jsterm/RemoteInterface;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {v5}, Lhecticman/jsterm/util/TermSettings;->getInitialCommand()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "initialCommand":Ljava/lang/String;
    if-eqz p1, :cond_23

    .line 115
    if-eqz v1, :cond_55

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    :cond_23
    :goto_23
    iget-object v5, p0, Lhecticman/jsterm/RemoteInterface;->mSettings:Lhecticman/jsterm/util/TermSettings;

    invoke-static {p0, v5, v1}, Lhecticman/jsterm/Term;->createTermSession(Landroid/content/Context;Lhecticman/jsterm/util/TermSettings;Ljava/lang/String;)Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v4

    .line 123
    .local v4, "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-virtual {v4, v3}, Lhecticman/jsterm/emulatorview/TermSession;->setFinishCallback(Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;)V

    .line 124
    invoke-virtual {v3}, Lhecticman/jsterm/TermService;->getSessions()Lhecticman/jsterm/util/SessionList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lhecticman/jsterm/util/SessionList;->add(Lhecticman/jsterm/emulatorview/TermSession;)Z

    .line 126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "handle":Ljava/lang/String;
    check-cast v4, Lhecticman/jsterm/ShellTermSession;

    .end local v4    # "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-virtual {v4, v0}, Lhecticman/jsterm/ShellTermSession;->setHandle(Ljava/lang/String;)V

    .line 129
    new-instance v2, Landroid/content/Intent;

    const-string v5, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v2}, Lhecticman/jsterm/RemoteInterface;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-object v0

    .line 118
    .end local v0    # "handle":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_55
    move-object v1, p1

    goto :goto_23
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 68
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "color_preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lhecticman/jsterm/RemoteInterface;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, "colorPrefs":Landroid/content/SharedPreferences;
    new-instance v3, Lhecticman/jsterm/util/TermSettings;

    invoke-virtual {p0}, Lhecticman/jsterm/RemoteInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lhecticman/jsterm/util/TermSettings;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    iput-object v3, p0, Lhecticman/jsterm/RemoteInterface;->mSettings:Lhecticman/jsterm/util/TermSettings;

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lhecticman/jsterm/TermService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "TSIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lhecticman/jsterm/RemoteInterface;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    iget-object v3, p0, Lhecticman/jsterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lhecticman/jsterm/RemoteInterface;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_36

    .line 74
    const-string v3, "Term"

    const-string v4, "bind to service failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lhecticman/jsterm/RemoteInterface;->finish()V

    .line 77
    :cond_36
    return-void
.end method
