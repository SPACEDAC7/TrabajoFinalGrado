.class public Lhecticman/jsterm/compat/ServiceForegroundCompat;
.super Ljava/lang/Object;
.source "ServiceForegroundCompat.java"


# static fields
.field private static mSetForegroundSig:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mStartForegroundSig:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mStopForegroundSig:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mNM:Landroid/app/NotificationManager;

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private notifyId:I

.field private service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v3, [Ljava/lang/Class;

    .line 35
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 34
    sput-object v0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mSetForegroundSig:[Ljava/lang/Class;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 37
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    .line 36
    sput-object v0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStartForegroundSig:[Ljava/lang/Class;

    .line 38
    new-array v0, v3, [Ljava/lang/Class;

    .line 39
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 38
    sput-object v0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStopForegroundSig:[Ljava/lang/Class;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .registers 7
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->service:Landroid/app/Service;

    .line 86
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mNM:Landroid/app/NotificationManager;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 91
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_14
    const-string v2, "startForeground"

    sget-object v3, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStartForegroundSig:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStartForeground:Ljava/lang/reflect/Method;

    .line 92
    const-string v2, "stopForeground"

    sget-object v3, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStopForegroundSig:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_28} :catch_42

    .line 98
    :goto_28
    :try_start_28
    const-string v2, "setForeground"

    sget-object v3, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mSetForegroundSig:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_28 .. :try_end_32} :catch_48

    .line 103
    :goto_32
    iget-object v2, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStartForeground:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4c

    iget-object v2, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mSetForeground:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4c

    .line 104
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Neither startForeground() or setForeground() present!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :catch_42
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iput-object v4, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v4, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStartForeground:Ljava/lang/reflect/Method;

    goto :goto_28

    .line 99
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_48
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    iput-object v4, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mSetForeground:Ljava/lang/reflect/Method;

    goto :goto_32

    .line 106
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_4c
    return-void
.end method

.method private varargs invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 50
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_d

    .line 59
    :goto_3
    return-void

    .line 51
    :catch_4
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ServiceCompat"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 54
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_d
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ServiceCompat"

    const-string v2, "Method threw exception"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public startForeground(ILandroid/app/Notification;)V
    .registers 9
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    iget-object v0, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    .line 63
    iget-object v0, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->service:Landroid/app/Service;

    iget-object v1, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStartForeground:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/compat/ServiceForegroundCompat;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 70
    :goto_18
    return-void

    .line 67
    :cond_19
    iget-object v0, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->service:Landroid/app/Service;

    iget-object v1, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mSetForeground:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/compat/ServiceForegroundCompat;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 69
    iput p1, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->notifyId:I

    goto :goto_18
.end method

.method public stopForeground(Z)V
    .registers 7
    .param p1, "removeNotify"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 73
    iget-object v0, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_16

    .line 74
    iget-object v0, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->service:Landroid/app/Service;

    iget-object v1, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mStopForeground:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/compat/ServiceForegroundCompat;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 82
    :goto_15
    return-void

    .line 78
    :cond_16
    if-eqz p1, :cond_1f

    .line 79
    iget-object v0, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mNM:Landroid/app/NotificationManager;

    iget v1, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->notifyId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 81
    :cond_1f
    iget-object v0, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->service:Landroid/app/Service;

    iget-object v1, p0, Lhecticman/jsterm/compat/ServiceForegroundCompat;->mSetForeground:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lhecticman/jsterm/compat/ServiceForegroundCompat;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_15
.end method
