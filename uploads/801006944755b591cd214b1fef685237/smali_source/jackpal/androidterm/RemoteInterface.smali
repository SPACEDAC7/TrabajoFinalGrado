.class public Ljackpal/androidterm/RemoteInterface;
.super Landroid/app/Activity;
.source "RemoteInterface.java"


# static fields
.field protected static final PRIVACT_ACTIVITY_ALIAS:Ljava/lang/String; = "jackpal.androidterm.TermInternal"

.field protected static final PRIVACT_OPEN_NEW_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.OPEN_NEW_WINDOW"

.field protected static final PRIVACT_SWITCH_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.SWITCH_WINDOW"

.field protected static final PRIVEXTRA_TARGET_WINDOW:Ljava/lang/String; = "jackpal.androidterm.private.target_window"


# instance fields
.field private mSettings:Ljackpal/androidterm/util/TermSettings;

.field private mTSConnection:Landroid/content/ServiceConnection;

.field private mTSIntent:Landroid/content/Intent;

.field private mTermService:Ljackpal/androidterm/TermService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Ljackpal/androidterm/RemoteInterface$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/RemoteInterface$1;-><init>(Ljackpal/androidterm/RemoteInterface;)V

    iput-object v0, p0, Ljackpal/androidterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Ljackpal/androidterm/RemoteInterface;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/RemoteInterface;
    .param p1, "x1"    # Ljackpal/androidterm/TermService;

    .prologue
    .line 39
    iput-object p1, p0, Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;

    return-object p1
.end method

.method public static quoteForBash(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x22

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "\"\\$`!"

    .line 137
    .local v4, "specialChars":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 139
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v3, :cond_28

    .line 140
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 141
    .local v1, "c":C
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_22

    .line 142
    const/16 v5, 0x5c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 146
    .end local v1    # "c":C
    :cond_28
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected appendToWindow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "handle"    # Ljava/lang/String;
    .param p2, "iInitialCommand"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->getTermService()Ljackpal/androidterm/TermService;

    move-result-object v3

    .line 186
    .local v3, "service":Ljackpal/androidterm/TermService;
    invoke-virtual {v3}, Ljackpal/androidterm/TermService;->getSessions()Ljackpal/androidterm/util/SessionList;

    move-result-object v5

    .line 187
    .local v5, "sessions":Ljackpal/androidterm/util/SessionList;
    const/4 v6, 0x0

    .line 189
    .local v6, "target":Ljackpal/androidterm/GenericTermSession;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_a
    invoke-virtual {v5}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v7

    if-ge v1, v7, :cond_23

    .line 190
    invoke-virtual {v5, v1}, Ljackpal/androidterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljackpal/androidterm/GenericTermSession;

    .line 191
    .local v4, "session":Ljackpal/androidterm/GenericTermSession;
    invoke-virtual {v4}, Ljackpal/androidterm/GenericTermSession;->getHandle()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "h":Ljava/lang/String;
    if-eqz v0, :cond_2a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 193
    move-object v6, v4

    .line 198
    .end local v0    # "h":Ljava/lang/String;
    .end local v4    # "session":Ljackpal/androidterm/GenericTermSession;
    :cond_23
    if-nez v6, :cond_2d

    .line 200
    invoke-virtual {p0, p2}, Ljackpal/androidterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    .end local p1    # "handle":Ljava/lang/String;
    :goto_29
    return-object p1

    .line 189
    .restart local v0    # "h":Ljava/lang/String;
    .restart local v4    # "session":Ljackpal/androidterm/GenericTermSession;
    .restart local p1    # "handle":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 203
    .end local v0    # "h":Ljava/lang/String;
    .end local v4    # "session":Ljackpal/androidterm/GenericTermSession;
    :cond_2d
    if-eqz p2, :cond_37

    .line 204
    invoke-virtual {v6, p2}, Ljackpal/androidterm/GenericTermSession;->write(Ljava/lang/String;)V

    .line 205
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljackpal/androidterm/GenericTermSession;->write(I)V

    .line 208
    :cond_37
    new-instance v2, Landroid/content/Intent;

    const-string v7, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    const-string v7, "jackpal.androidterm.private.target_window"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v2}, Ljackpal/androidterm/RemoteInterface;->startActivity(Landroid/content/Intent;)V

    goto :goto_29
.end method

.method public finish()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Ljackpal/androidterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    .line 82
    .local v0, "conn":Landroid/content/ServiceConnection;
    if-eqz v0, :cond_21

    .line 83
    invoke-virtual {p0, v0}, Ljackpal/androidterm/RemoteInterface;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    iget-object v1, p0, Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;

    .line 87
    .local v1, "service":Ljackpal/androidterm/TermService;
    if-eqz v1, :cond_1d

    .line 88
    invoke-virtual {v1}, Ljackpal/androidterm/TermService;->getSessions()Ljackpal/androidterm/util/SessionList;

    move-result-object v2

    .line 89
    .local v2, "sessions":Ljackpal/androidterm/util/SessionList;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v3

    if-nez v3, :cond_1d

    .line 90
    :cond_18
    iget-object v3, p0, Ljackpal/androidterm/RemoteInterface;->mTSIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Ljackpal/androidterm/RemoteInterface;->stopService(Landroid/content/Intent;)Z

    .line 94
    .end local v2    # "sessions":Ljackpal/androidterm/util/SessionList;
    :cond_1d
    iput-object v4, p0, Ljackpal/androidterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    .line 95
    iput-object v4, p0, Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;

    .line 97
    .end local v1    # "service":Ljackpal/androidterm/TermService;
    :cond_21
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 98
    return-void
.end method

.method protected getTermService()Ljackpal/androidterm/TermService;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ljackpal/androidterm/RemoteInterface;->mTermService:Ljackpal/androidterm/TermService;

    return-object v0
.end method

.method protected handleIntent()V
    .registers 10

    .prologue
    .line 105
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->getTermService()Ljackpal/androidterm/TermService;

    move-result-object v6

    .line 106
    .local v6, "service":Ljackpal/androidterm/TermService;
    if-nez v6, :cond_a

    .line 107
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->finish()V

    .line 129
    :goto_9
    return-void

    .line 111
    :cond_a
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 112
    .local v4, "myIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 116
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "extraStream":Ljava/lang/Object;
    instance-of v7, v2, Landroid/net/Uri;

    if-eqz v7, :cond_5c

    .line 118
    check-cast v2, Landroid/net/Uri;

    .end local v2    # "extraStream":Ljava/lang/Object;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_60

    move-object v1, v5

    .line 121
    .local v1, "dirPath":Ljava/lang/String;
    :goto_42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cd "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljackpal/androidterm/RemoteInterface;->quoteForBash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljackpal/androidterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .end local v1    # "dirPath":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->finish()V

    goto :goto_9

    .line 120
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_60
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    .line 125
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :cond_65
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljackpal/androidterm/RemoteInterface;->openNewWindow(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljackpal/androidterm/util/TermSettings;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    iput-object v2, p0, Ljackpal/androidterm/RemoteInterface;->mSettings:Ljackpal/androidterm/util/TermSettings;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ljackpal/androidterm/TermService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "TSIntent":Landroid/content/Intent;
    iput-object v0, p0, Ljackpal/androidterm/RemoteInterface;->mTSIntent:Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Ljackpal/androidterm/RemoteInterface;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    iget-object v2, p0, Ljackpal/androidterm/RemoteInterface;->mTSConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Ljackpal/androidterm/RemoteInterface;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 74
    const-string v2, "Term"

    const-string v3, "bind to service failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->finish()V

    .line 77
    :cond_31
    return-void
.end method

.method protected openNewWindow(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "iInitialCommand"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Ljackpal/androidterm/RemoteInterface;->getTermService()Ljackpal/androidterm/TermService;

    move-result-object v4

    .line 153
    .local v4, "service":Ljackpal/androidterm/TermService;
    iget-object v6, p0, Ljackpal/androidterm/RemoteInterface;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-virtual {v6}, Ljackpal/androidterm/util/TermSettings;->getInitialCommand()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "initialCommand":Ljava/lang/String;
    if-eqz p1, :cond_25

    .line 155
    if-eqz v2, :cond_57

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    :cond_25
    :goto_25
    :try_start_25
    iget-object v6, p0, Ljackpal/androidterm/RemoteInterface;->mSettings:Ljackpal/androidterm/util/TermSettings;

    invoke-static {p0, v6, v2}, Ljackpal/androidterm/Term;->createTermSession(Landroid/content/Context;Ljackpal/androidterm/util/TermSettings;Ljava/lang/String;)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v5

    .line 165
    .local v5, "session":Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v5, v4}, Ljackpal/androidterm/emulatorview/TermSession;->setFinishCallback(Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;)V

    .line 166
    invoke-virtual {v4}, Ljackpal/androidterm/TermService;->getSessions()Ljackpal/androidterm/util/SessionList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z

    .line 168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "handle":Ljava/lang/String;
    check-cast v5, Ljackpal/androidterm/GenericTermSession;

    .end local v5    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    invoke-virtual {v5, v1}, Ljackpal/androidterm/GenericTermSession;->setHandle(Ljava/lang/String;)V

    .line 171
    new-instance v3, Landroid/content/Intent;

    const-string v6, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v3}, Ljackpal/androidterm/RemoteInterface;->startActivity(Landroid/content/Intent;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_56} :catch_59

    .line 178
    .end local v1    # "handle":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_56
    return-object v1

    .line 158
    :cond_57
    move-object v2, p1

    goto :goto_25

    .line 177
    :catch_59
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_56
.end method
