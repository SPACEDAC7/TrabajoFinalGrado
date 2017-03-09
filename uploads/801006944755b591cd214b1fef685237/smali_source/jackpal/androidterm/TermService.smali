.class public Ljackpal/androidterm/TermService;
.super Landroid/app/Service;
.source "TermService.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljackpal/androidterm/TermService$1;,
        Ljackpal/androidterm/TermService$RBinderCleanupCallback;,
        Ljackpal/androidterm/TermService$RBinder;,
        Ljackpal/androidterm/TermService$TSBinder;
    }
.end annotation


# static fields
.field private static final COMPAT_START_STICKY:I = 0x1

.field private static final RUNNING_NOTIFICATION:I = 0x1


# instance fields
.field private compat:Ljackpal/androidterm/compat/ServiceForegroundCompat;

.field private final mTSBinder:Landroid/os/IBinder;

.field private mTermSessions:Ljackpal/androidterm/util/SessionList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Ljackpal/androidterm/TermService$TSBinder;

    invoke-direct {v0, p0}, Ljackpal/androidterm/TermService$TSBinder;-><init>(Ljackpal/androidterm/TermService;)V

    iput-object v0, p0, Ljackpal/androidterm/TermService;->mTSBinder:Landroid/os/IBinder;

    .line 201
    return-void
.end method

.method static synthetic access$100(Ljackpal/androidterm/TermService;)Ljackpal/androidterm/util/SessionList;
    .registers 2
    .param p0, "x0"    # Ljackpal/androidterm/TermService;

    .prologue
    .line 43
    iget-object v0, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    return-object v0
.end method


# virtual methods
.method public getSessions()Ljackpal/androidterm/util/SessionList;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string v0, "jackpal.androidterm.action.START_TERM.v1"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 73
    const-string v0, "TermService"

    const-string v1, "Outside process called onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Ljackpal/androidterm/TermService$RBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljackpal/androidterm/TermService$RBinder;-><init>(Ljackpal/androidterm/TermService;Ljackpal/androidterm/TermService$1;)V

    .line 79
    :goto_19
    return-object v0

    .line 77
    :cond_1a
    const-string v0, "TermService"

    const-string v1, "Activity called onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Ljackpal/androidterm/TermService;->mTSBinder:Landroid/os/IBinder;

    goto :goto_19
.end method

.method public onCreate()V
    .registers 14

    .prologue
    const v12, 0x7f09005b

    const/4 v9, 0x0

    .line 86
    invoke-virtual {p0}, Ljackpal/androidterm/TermService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 87
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 88
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "HOME"

    invoke-virtual {p0, v7, v9}, Ljackpal/androidterm/TermService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "defValue":Ljava/lang/String;
    const-string v7, "home_path"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "homePath":Ljava/lang/String;
    const-string v7, "home_path"

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    new-instance v7, Ljackpal/androidterm/compat/ServiceForegroundCompat;

    invoke-direct {v7, p0}, Ljackpal/androidterm/compat/ServiceForegroundCompat;-><init>(Landroid/app/Service;)V

    iput-object v7, p0, Ljackpal/androidterm/TermService;->compat:Ljackpal/androidterm/compat/ServiceForegroundCompat;

    .line 94
    new-instance v7, Ljackpal/androidterm/util/SessionList;

    invoke-direct {v7}, Ljackpal/androidterm/util/SessionList;-><init>()V

    iput-object v7, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    .line 97
    new-instance v3, Landroid/app/Notification;

    const v7, 0x7f02000d

    invoke-virtual {p0, v12}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v3, v7, v8, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 98
    .local v3, "notification":Landroid/app/Notification;
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 99
    new-instance v4, Landroid/content/Intent;

    const-class v7, Ljackpal/androidterm/Term;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v4, "notifyIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-static {p0, v9, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 102
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const v7, 0x7f090010

    invoke-virtual {p0, v7}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v12}, Ljackpal/androidterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, p0, v7, v8, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 103
    iget-object v7, p0, Ljackpal/androidterm/TermService;->compat:Ljackpal/androidterm/compat/ServiceForegroundCompat;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v3}, Ljackpal/androidterm/compat/ServiceForegroundCompat;->startForeground(ILandroid/app/Notification;)V

    .line 105
    const-string v7, "Term"

    const-string v8, "TermService started"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 111
    iget-object v2, p0, Ljackpal/androidterm/TermService;->compat:Ljackpal/androidterm/compat/ServiceForegroundCompat;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljackpal/androidterm/compat/ServiceForegroundCompat;->stopForeground(Z)V

    .line 112
    iget-object v2, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2}, Ljackpal/androidterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/emulatorview/TermSession;

    .line 116
    .local v1, "session":Ljackpal/androidterm/emulatorview/TermSession;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljackpal/androidterm/emulatorview/TermSession;->setFinishCallback(Ljackpal/androidterm/emulatorview/TermSession$FinishCallback;)V

    .line 117
    invoke-virtual {v1}, Ljackpal/androidterm/emulatorview/TermSession;->finish()V

    goto :goto_c

    .line 119
    .end local v1    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    :cond_20
    iget-object v2, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v2}, Ljackpal/androidterm/util/SessionList;->clear()V

    .line 120
    return-void
.end method

.method public onSessionFinish(Ljackpal/androidterm/emulatorview/TermSession;)V
    .registers 3
    .param p1, "session"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 128
    iget-object v0, p0, Ljackpal/androidterm/TermService;->mTermSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/util/SessionList;->remove(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 63
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
