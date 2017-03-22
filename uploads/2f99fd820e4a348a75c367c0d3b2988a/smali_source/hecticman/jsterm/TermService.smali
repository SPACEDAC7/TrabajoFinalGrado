.class public Lhecticman/jsterm/TermService;
.super Landroid/app/Service;
.source "TermService.java"

# interfaces
.implements Lhecticman/jsterm/emulatorview/TermSession$FinishCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhecticman/jsterm/TermService$TSBinder;
    }
.end annotation


# static fields
.field private static final COMPAT_START_STICKY:I = 0x1

.field private static final RUNNING_NOTIFICATION:I = 0x1


# instance fields
.field private compat:Lhecticman/jsterm/compat/ServiceForegroundCompat;

.field private final mTSBinder:Landroid/os/IBinder;

.field private mTermSessions:Lhecticman/jsterm/util/SessionList;

.field private notification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lhecticman/jsterm/TermService$TSBinder;

    invoke-direct {v0, p0}, Lhecticman/jsterm/TermService$TSBinder;-><init>(Lhecticman/jsterm/TermService;)V

    iput-object v0, p0, Lhecticman/jsterm/TermService;->mTSBinder:Landroid/os/IBinder;

    .line 34
    return-void
.end method


# virtual methods
.method public getSessions()Lhecticman/jsterm/util/SessionList;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lhecticman/jsterm/TermService;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string v0, "TermService"

    const-string v1, "Activity called onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lhecticman/jsterm/TermService;->mTSBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    new-instance v3, Lhecticman/jsterm/compat/ServiceForegroundCompat;

    invoke-direct {v3, p0}, Lhecticman/jsterm/compat/ServiceForegroundCompat;-><init>(Landroid/app/Service;)V

    iput-object v3, p0, Lhecticman/jsterm/TermService;->compat:Lhecticman/jsterm/compat/ServiceForegroundCompat;

    .line 72
    new-instance v3, Lhecticman/jsterm/util/SessionList;

    invoke-direct {v3}, Lhecticman/jsterm/util/SessionList;-><init>()V

    iput-object v3, p0, Lhecticman/jsterm/TermService;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    .line 74
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "strNotifyText":Ljava/lang/String;
    const v3, 0x7f07002f

    invoke-virtual {p0, v3}, Lhecticman/jsterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020010

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lhecticman/jsterm/TermService;->notification:Landroid/app/Notification;

    .line 79
    iget-object v3, p0, Lhecticman/jsterm/TermService;->notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lhecticman/jsterm/Term;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "notifyIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 83
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lhecticman/jsterm/TermService;->notification:Landroid/app/Notification;

    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lhecticman/jsterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, p0, v4, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 84
    iget-object v3, p0, Lhecticman/jsterm/TermService;->compat:Lhecticman/jsterm/compat/ServiceForegroundCompat;

    iget-object v4, p0, Lhecticman/jsterm/TermService;->notification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4}, Lhecticman/jsterm/compat/ServiceForegroundCompat;->startForeground(ILandroid/app/Notification;)V

    .line 86
    const-string v3, "Term"

    const-string v4, "TermService started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 107
    iget-object v1, p0, Lhecticman/jsterm/TermService;->compat:Lhecticman/jsterm/compat/ServiceForegroundCompat;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhecticman/jsterm/compat/ServiceForegroundCompat;->stopForeground(Z)V

    .line 108
    iget-object v1, p0, Lhecticman/jsterm/TermService;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v1}, Lhecticman/jsterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_18

    .line 111
    iget-object v1, p0, Lhecticman/jsterm/TermService;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v1}, Lhecticman/jsterm/util/SessionList;->clear()V

    .line 112
    return-void

    .line 108
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/TermSession;

    .line 109
    .local v0, "session":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-virtual {v0}, Lhecticman/jsterm/emulatorview/TermSession;->finish()V

    goto :goto_c
.end method

.method public onSessionFinish(Lhecticman/jsterm/emulatorview/TermSession;)V
    .registers 3
    .param p1, "session"    # Lhecticman/jsterm/emulatorview/TermSession;

    .prologue
    .line 120
    iget-object v0, p0, Lhecticman/jsterm/TermService;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v0, p1}, Lhecticman/jsterm/util/SessionList;->remove(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public updateNotification()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 91
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "strNotifyText":Ljava/lang/String;
    const v5, 0x7f07002f

    invoke-virtual {p0, v5}, Lhecticman/jsterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lhecticman/jsterm/TermService;->mTermSessions:Lhecticman/jsterm/util/SessionList;

    invoke-virtual {v7}, Lhecticman/jsterm/util/SessionList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 94
    iget-object v5, p0, Lhecticman/jsterm/TermService;->notification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lhecticman/jsterm/Term;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v1, "notifyIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 98
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lhecticman/jsterm/TermService;->notification:Landroid/app/Notification;

    const v6, 0x7f07000f

    invoke-virtual {p0, v6}, Lhecticman/jsterm/TermService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, p0, v6, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 100
    const-string v2, "notification"

    .line 101
    .local v2, "ns":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lhecticman/jsterm/TermService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 102
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lhecticman/jsterm/TermService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    return-void
.end method
