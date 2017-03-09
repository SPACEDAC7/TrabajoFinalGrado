.class public Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;
.super Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;
.source "DustbusterLauncherService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "apiUrl"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/BaseDustbusterLauncher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public forceProcessEvents()V
    .registers 4

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApiUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->getProcessBatchesIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 18
    return-void
.end method

.method public processEventCollection(Lorg/json/JSONArray;)V
    .registers 5
    .param p1, "events"    # Lorg/json/JSONArray;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApiUrl:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->getAddEventCollectionIntent(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    return-void
.end method

.method public processNewEvent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApiUrl:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->getAddEventIntent(Landroid/content/Context;Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    return-void
.end method

.method public refreshServicePrefs()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLauncherService;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->getRefreshPrefsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    return-void
.end method
