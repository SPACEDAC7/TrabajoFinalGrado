.class public Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;
.super Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;
.source "DustbusterLauncherInstance.java"


# instance fields
.field private final mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "apiUrl"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    invoke-direct {v0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    .line 19
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;)V
    .registers 4
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "apiUrl"    # Ljava/lang/String;
    .param p3, "dustbusterLogic"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    iput-object p3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    return-object v0
.end method


# virtual methods
.method public forceProcessEvents()V
    .registers 3

    .prologue
    .line 34
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$1;-><init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 40
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public processEventCollection(Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "events"    # Lorg/json/JSONArray;

    .prologue
    .line 57
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;

    invoke-direct {v0, p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;-><init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;Lorg/json/JSONArray;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 64
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public processNewEvent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    .prologue
    .line 45
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;

    invoke-direct {v0, p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;-><init>(Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 52
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method

.method public refreshServicePrefs()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherInstance;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->reloadPrefs()V

    .line 70
    return-void
.end method
