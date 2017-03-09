.class public Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;
.super Landroid/app/IntentService;
.source "DustbusterEventIntentService.java"


# static fields
.field private static final ACTION_ADD_EVENT:Ljava/lang/String; = "add_event"

.field private static final ACTION_ADD_EVENT_COLLECTION:Ljava/lang/String; = "add_event_collection"

.field private static final ACTION_PROCESS_BATCHES:Ljava/lang/String; = "process_batches"

.field private static final ACTION_REFRESH_PREFS:Ljava/lang/String; = "refresh_prefs"

.field public static final ACTION_RESULT:Ljava/lang/String; = "com.buzzfeed.dustbuster.result"

.field private static final EXTRA_EVENT:Ljava/lang/String; = "event"

.field private static final EXTRA_EVENTS:Ljava/lang/String; = "eventCollection"

.field private static final EXTRA_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EXTRA_RESPONSE_EVENT_KEYS:Ljava/lang/String; = "keys_sent"

.field public static final EXTRA_RESPONSE_IS_SUCCESS:Ljava/lang/String; = "is_success"

.field public static final EXTRA_RESPONSE_MESSAGE:Ljava/lang/String; = "response_message"

.field private static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    const-string v0, "DustbusterEventIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static getAddEventCollectionIntent(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "add_event_collection"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "eventCollection"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method public static getAddEventIntent(Landroid/content/Context;Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "add_event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "event"

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "event_id"

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public static getProcessBatchesIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "process_batches"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public static getRefreshPrefsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "refresh_prefs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 70
    new-instance v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    .line 71
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 96
    :cond_8
    :goto_8
    return-void

    .line 77
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_8c

    :cond_15
    :goto_15
    packed-switch v0, :pswitch_data_9e

    goto :goto_8

    .line 79
    :pswitch_19
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->reloadPrefs()V

    goto :goto_8

    .line 77
    :sswitch_1f
    const-string v2, "refresh_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x0

    goto :goto_15

    :sswitch_29
    const-string v2, "add_event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :sswitch_33
    const-string v2, "add_event_collection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x2

    goto :goto_15

    :sswitch_3d
    const-string v2, "process_batches"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x3

    goto :goto_15

    .line 83
    :pswitch_47
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    const-string v1, "event_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->addEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->checkMinimumEventsToProcess(Ljava/lang/String;)Z

    goto :goto_8

    .line 88
    :pswitch_65
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    const-string v1, "eventCollection"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->addEventCollection(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->checkMinimumEventsToProcess(Ljava/lang/String;)Z

    goto :goto_8

    .line 93
    :pswitch_7d
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventIntentService;->mLogic:Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;->processBatches(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 77
    nop

    :sswitch_data_8c
    .sparse-switch
        -0x559237b4 -> :sswitch_1f
        -0x27fb1c68 -> :sswitch_3d
        0x13b5917c -> :sswitch_29
        0x2af5ed41 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_47
        :pswitch_65
        :pswitch_7d
    .end packed-switch
.end method
