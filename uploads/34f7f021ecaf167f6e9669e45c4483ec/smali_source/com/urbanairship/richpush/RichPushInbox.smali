.class public Lcom/urbanairship/richpush/RichPushInbox;
.super Lcom/urbanairship/AirshipComponent;
.source "RichPushInbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;,
        Lcom/urbanairship/richpush/RichPushInbox$Predicate;,
        Lcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;,
        Lcom/urbanairship/richpush/RichPushInbox$Listener;
    }
.end annotation


# static fields
.field private static final MESSAGE_COMPARATOR:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

.field public static final MESSAGE_DATA_SCHEME:Ljava/lang/String; = "message"

.field public static final VIEW_INBOX_INTENT_ACTION:Ljava/lang/String; = "com.urbanairship.VIEW_RICH_PUSH_INBOX"

.field public static final VIEW_MESSAGE_INTENT_ACTION:Ljava/lang/String; = "com.urbanairship.VIEW_RICH_PUSH_MESSAGE"

.field private static final inboxLock:Ljava/lang/Object;


# instance fields
.field private final activityMonitor:Lcom/urbanairship/ActivityMonitor;

.field private final context:Landroid/content/Context;

.field private final dataStore:Lcom/urbanairship/PreferenceDataStore;

.field private final deletedMessageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private fetchCount:I

.field private final handler:Landroid/os/Handler;

.field private inboxJobHandler:Lcom/urbanairship/richpush/InboxJobHandler;

.field private final jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

.field private final listener:Lcom/urbanairship/ActivityMonitor$Listener;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushInbox$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final readMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;

.field private final unreadMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final user:Lcom/urbanairship/richpush/RichPushUser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-direct {v0}, Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushInbox;->MESSAGE_COMPARATOR:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataStore"    # Lcom/urbanairship/PreferenceDataStore;
    .param p3, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;

    .prologue
    .line 134
    invoke-static {p1}, Lcom/urbanairship/job/JobDispatcher;->shared(Landroid/content/Context;)Lcom/urbanairship/job/JobDispatcher;

    move-result-object v3

    new-instance v4, Lcom/urbanairship/richpush/RichPushUser;

    invoke-static {p1}, Lcom/urbanairship/job/JobDispatcher;->shared(Landroid/content/Context;)Lcom/urbanairship/job/JobDispatcher;

    move-result-object v0

    invoke-direct {v4, p2, v0}, Lcom/urbanairship/richpush/RichPushUser;-><init>(Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/job/JobDispatcher;)V

    new-instance v5, Lcom/urbanairship/richpush/RichPushResolver;

    invoke-direct {v5, p1}, Lcom/urbanairship/richpush/RichPushResolver;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 134
    invoke-direct/range {v0 .. v7}, Lcom/urbanairship/richpush/RichPushInbox;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/job/JobDispatcher;Lcom/urbanairship/richpush/RichPushUser;Lcom/urbanairship/richpush/RichPushResolver;Ljava/util/concurrent/Executor;Lcom/urbanairship/ActivityMonitor;)V

    .line 136
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/job/JobDispatcher;Lcom/urbanairship/richpush/RichPushUser;Lcom/urbanairship/richpush/RichPushResolver;Ljava/util/concurrent/Executor;Lcom/urbanairship/ActivityMonitor;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataStore"    # Lcom/urbanairship/PreferenceDataStore;
    .param p3, "jobDispatcher"    # Lcom/urbanairship/job/JobDispatcher;
    .param p4, "user"    # Lcom/urbanairship/richpush/RichPushUser;
    .param p5, "resolver"    # Lcom/urbanairship/richpush/RichPushResolver;
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->deletedMessageIds:Ljava/util/Set;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->handler:Landroid/os/Handler;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->fetchCount:I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushInbox;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 143
    iput-object p4, p0, Lcom/urbanairship/richpush/RichPushInbox;->user:Lcom/urbanairship/richpush/RichPushUser;

    .line 144
    iput-object p5, p0, Lcom/urbanairship/richpush/RichPushInbox;->richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;

    .line 145
    iput-object p6, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/Executor;

    .line 146
    iput-object p3, p0, Lcom/urbanairship/richpush/RichPushInbox;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    .line 147
    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox$1;

    invoke-direct {v0, p0, p3}, Lcom/urbanairship/richpush/RichPushInbox$1;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Lcom/urbanairship/job/JobDispatcher;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 162
    iput-object p7, p0, Lcom/urbanairship/richpush/RichPushInbox;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/richpush/RichPushInbox;)Lcom/urbanairship/richpush/RichPushUser;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushInbox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->user:Lcom/urbanairship/richpush/RichPushUser;

    return-object v0
.end method

.method static synthetic access$110(Lcom/urbanairship/richpush/RichPushInbox;)I
    .registers 3
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushInbox;

    .prologue
    .line 47
    iget v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->fetchCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->fetchCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/urbanairship/richpush/RichPushInbox;)Lcom/urbanairship/richpush/RichPushResolver;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushInbox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushInbox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    return-object v0
.end method

.method private fetchMessages(ZLcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;
    .registers 9
    .param p1, "force"    # Z
    .param p2, "callback"    # Lcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "looper"    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 347
    new-instance v1, Lcom/urbanairship/PendingResult;

    new-instance v3, Lcom/urbanairship/richpush/RichPushInbox$3;

    invoke-direct {v3, p0, p2}, Lcom/urbanairship/richpush/RichPushInbox$3;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Lcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;)V

    invoke-direct {v1, v3}, Lcom/urbanairship/PendingResult;-><init>(Lcom/urbanairship/PendingResult$ResultCallback;)V

    .line 356
    .local v1, "pendingResult":Lcom/urbanairship/PendingResult;, "Lcom/urbanairship/PendingResult<Ljava/lang/Boolean;>;"
    iget v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->fetchCount:I

    if-lez v3, :cond_19

    if-nez p1, :cond_19

    .line 357
    const-string v3, "Skipping refresh messages, messages are already refreshing. Callback will not be triggered."

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Lcom/urbanairship/PendingResult;->cancel()V

    .line 385
    :goto_18
    return-object v1

    .line 362
    :cond_19
    iget v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->fetchCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->fetchCount:I

    .line 364
    if-nez p3, :cond_2b

    .line 365
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_56

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 368
    :cond_2b
    :goto_2b
    new-instance v2, Lcom/urbanairship/richpush/RichPushInbox$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3, v1}, Lcom/urbanairship/richpush/RichPushInbox$4;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Landroid/os/Handler;Lcom/urbanairship/PendingResult;)V

    .line 376
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    const-string v3, "RichPushInbox - Updating messages"

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 378
    const-string v3, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-static {v3}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v3

    const-class v4, Lcom/urbanairship/richpush/RichPushInbox;

    .line 379
    invoke-virtual {v3, v4}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v3

    const-string v4, "com.urbanairship.richpush.RESULT_RECEIVER"

    .line 380
    invoke-virtual {v3, v4, v2}, Lcom/urbanairship/job/Job$Builder;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v3

    .line 381
    invoke-virtual {v3}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v0

    .line 383
    .local v0, "job":Lcom/urbanairship/job/Job;
    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushInbox;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-virtual {v3, v0}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    goto :goto_18

    .line 365
    .end local v0    # "job":Lcom/urbanairship/job/Job;
    .end local v2    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    goto :goto_2b
.end method

.method private filterMessages(Ljava/util/Collection;Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/Collection;
    .registers 7
    .param p2, "predicate"    # Lcom/urbanairship/richpush/RichPushInbox$Predicate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;",
            "Lcom/urbanairship/richpush/RichPushInbox$Predicate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    .local p1, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/urbanairship/richpush/RichPushMessage;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v0, "filteredMessages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    if-nez p2, :cond_8

    .line 456
    .end local p1    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/urbanairship/richpush/RichPushMessage;>;"
    :goto_7
    return-object p1

    .line 450
    .restart local p1    # "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/urbanairship/richpush/RichPushMessage;>;"
    :cond_8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/richpush/RichPushMessage;

    .line 451
    .local v1, "message":Lcom/urbanairship/richpush/RichPushMessage;
    invoke-interface {p2, v1}, Lcom/urbanairship/richpush/RichPushInbox$Predicate;->apply(Lcom/urbanairship/richpush/RichPushMessage;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 452
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .end local v1    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    :cond_22
    move-object p1, v0

    .line 456
    goto :goto_7
.end method

.method private notifyInboxUpdated()V
    .registers 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/urbanairship/richpush/RichPushInbox$8;

    invoke-direct {v1, p0}, Lcom/urbanairship/richpush/RichPushInbox$8;-><init>(Lcom/urbanairship/richpush/RichPushInbox;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    return-void
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/richpush/RichPushInbox$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/richpush/RichPushInbox$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 268
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public deleteMessages(Ljava/util/Set;)V
    .registers 7
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/urbanairship/richpush/RichPushInbox$7;

    invoke-direct {v3, p0, p1}, Lcom/urbanairship/richpush/RichPushInbox$7;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 636
    sget-object v3, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v3

    .line 637
    :try_start_d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 639
    .local v1, "messageId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/urbanairship/richpush/RichPushInbox;->getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;

    move-result-object v0

    .line 640
    .local v0, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v0, :cond_11

    .line 641
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->deleted:Z

    .line 642
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->deletedMessageIds:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 647
    .end local v0    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v1    # "messageId":Ljava/lang/String;
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_36

    throw v2

    :cond_39
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 649
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyInboxUpdated()V

    .line 650
    return-void
.end method

.method public fetchMessages(Lcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;)Lcom/urbanairship/Cancelable;
    .registers 4
    .param p1, "callback"    # Lcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/urbanairship/richpush/RichPushInbox;->fetchMessages(ZLcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public fetchMessages(Lcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;
    .registers 4
    .param p1, "callback"    # Lcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "looper"    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/urbanairship/richpush/RichPushInbox;->fetchMessages(ZLcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public fetchMessages()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/urbanairship/richpush/RichPushInbox;->fetchMessages(ZLcom/urbanairship/richpush/RichPushInbox$FetchMessagesCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;

    .line 294
    return-void
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 394
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 396
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;
    .registers 4
    .param p1, "messageId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 548
    if-nez p1, :cond_4

    .line 549
    const/4 v0, 0x0

    .line 556
    :goto_3
    return-object v0

    .line 552
    :cond_4
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_7
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 554
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    monitor-exit v1

    goto :goto_3

    .line 557
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0

    .line 556
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_19

    goto :goto_3
.end method

.method public getMessageIds()Ljava/util/Set;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    sget-object v2, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 407
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushInbox;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 408
    .local v0, "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 409
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 410
    monitor-exit v2

    return-object v0

    .line 411
    .end local v0    # "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getMessages()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getMessages(Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/List;
    .registers 5
    .param p1, "predicate"    # Lcom/urbanairship/richpush/RichPushInbox$Predicate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/richpush/RichPushInbox$Predicate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    sget-object v2, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/urbanairship/richpush/RichPushInbox;->filterMessages(Ljava/util/Collection;Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/urbanairship/richpush/RichPushInbox;->filterMessages(Ljava/util/Collection;Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->MESSAGE_COMPARATOR:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 473
    monitor-exit v2

    return-object v0

    .line 474
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getReadCount()I
    .registers 3

    .prologue
    .line 420
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 422
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getReadMessages()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getReadMessages(Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReadMessages(Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/List;
    .registers 5
    .param p1, "predicate"    # Lcom/urbanairship/richpush/RichPushInbox$Predicate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/richpush/RichPushInbox$Predicate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    sget-object v2, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 524
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/urbanairship/richpush/RichPushInbox;->filterMessages(Ljava/util/Collection;Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 525
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->MESSAGE_COMPARATOR:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 526
    monitor-exit v2

    return-object v0

    .line 527
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getUnreadCount()I
    .registers 3

    .prologue
    .line 431
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 433
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getUnreadMessages()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushInbox;->getUnreadMessages(Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessages(Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/List;
    .registers 5
    .param p1, "predicate"    # Lcom/urbanairship/richpush/RichPushInbox$Predicate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/richpush/RichPushInbox$Predicate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    sget-object v2, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 498
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/urbanairship/richpush/RichPushInbox;->filterMessages(Ljava/util/Collection;Lcom/urbanairship/richpush/RichPushInbox$Predicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 499
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    sget-object v1, Lcom/urbanairship/richpush/RichPushInbox;->MESSAGE_COMPARATOR:Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 500
    monitor-exit v2

    return-object v0

    .line 501
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getUser()Lcom/urbanairship/richpush/RichPushUser;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->user:Lcom/urbanairship/richpush/RichPushUser;

    return-object v0
.end method

.method protected init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 168
    new-instance v0, Lcom/urbanairship/richpush/RichPushInbox$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/richpush/RichPushInbox$2;-><init>(Lcom/urbanairship/richpush/RichPushInbox;)V

    .line 178
    .local v0, "userListener":Lcom/urbanairship/richpush/RichPushUser$Listener;
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushUser;->addListener(Lcom/urbanairship/richpush/RichPushUser$Listener;)V

    .line 183
    .end local v0    # "userListener":Lcom/urbanairship/richpush/RichPushUser$Listener;
    :goto_17
    invoke-virtual {p0, v2}, Lcom/urbanairship/richpush/RichPushInbox;->refresh(Z)V

    .line 185
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v1, v2}, Lcom/urbanairship/ActivityMonitor;->addListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 186
    return-void

    .line 180
    :cond_22
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->user:Lcom/urbanairship/richpush/RichPushUser;

    invoke-virtual {v1, v2}, Lcom/urbanairship/richpush/RichPushUser;->update(Z)V

    goto :goto_17
.end method

.method public markMessagesRead(Ljava/util/Set;)V
    .registers 7
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/urbanairship/richpush/RichPushInbox$5;

    invoke-direct {v3, p0, p1}, Lcom/urbanairship/richpush/RichPushInbox$5;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 575
    sget-object v3, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v3

    .line 576
    :try_start_d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 578
    .local v1, "messageId":Ljava/lang/String;
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    .line 580
    .local v0, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v0, :cond_11

    .line 581
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 582
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 588
    .end local v0    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v1    # "messageId":Ljava/lang/String;
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_35

    throw v2

    .line 587
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyInboxUpdated()V

    .line 588
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    .line 589
    return-void
.end method

.method public markMessagesUnread(Ljava/util/Set;)V
    .registers 7
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "messageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/urbanairship/richpush/RichPushInbox$6;

    invoke-direct {v3, p0, p1}, Lcom/urbanairship/richpush/RichPushInbox$6;-><init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 604
    sget-object v3, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v3

    .line 605
    :try_start_d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 607
    .local v1, "messageId":Ljava/lang/String;
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    .line 609
    .local v0, "message":Lcom/urbanairship/richpush/RichPushMessage;
    if-eqz v0, :cond_11

    .line 610
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 611
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object v4, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 615
    .end local v0    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v1    # "messageId":Ljava/lang/String;
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_35

    throw v2

    :cond_38
    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 617
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyInboxUpdated()V

    .line 618
    return-void
.end method

.method protected onPerformJob(Lcom/urbanairship/UAirship;Lcom/urbanairship/job/Job;)I
    .registers 6
    .param p1, "airship"    # Lcom/urbanairship/UAirship;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "job"    # Lcom/urbanairship/job/Job;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->inboxJobHandler:Lcom/urbanairship/richpush/InboxJobHandler;

    if-nez v0, :cond_f

    .line 192
    new-instance v0, Lcom/urbanairship/richpush/InboxJobHandler;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->dataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-direct {v0, v1, p1, v2}, Lcom/urbanairship/richpush/InboxJobHandler;-><init>(Landroid/content/Context;Lcom/urbanairship/UAirship;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->inboxJobHandler:Lcom/urbanairship/richpush/InboxJobHandler;

    .line 195
    :cond_f
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->inboxJobHandler:Lcom/urbanairship/richpush/InboxJobHandler;

    invoke-virtual {v0, p2}, Lcom/urbanairship/richpush/InboxJobHandler;->performJob(Lcom/urbanairship/job/Job;)I

    move-result v0

    return v0
.end method

.method refresh(Z)V
    .registers 11
    .param p1, "notify"    # Z

    .prologue
    .line 659
    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->richPushResolver:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v5}, Lcom/urbanairship/richpush/RichPushResolver;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 662
    .local v1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/richpush/RichPushMessage;>;"
    sget-object v6, Lcom/urbanairship/richpush/RichPushInbox;->inboxLock:Ljava/lang/Object;

    monitor-enter v6

    .line 665
    :try_start_9
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 666
    .local v4, "previousUnreadMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 668
    .local v3, "previousReadMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->deletedMessageIds:Ljava/util/Set;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 671
    .local v2, "previousDeletedMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 672
    iget-object v5, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 675
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/richpush/RichPushMessage;

    .line 678
    .local v0, "message":Lcom/urbanairship/richpush/RichPushMessage;
    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_50

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 679
    :cond_50
    iget-object v7, p0, Lcom/urbanairship/richpush/RichPushInbox;->deletedMessageIds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 710
    .end local v0    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .end local v2    # "previousDeletedMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "previousReadMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "previousUnreadMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_5a
    move-exception v5

    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_5a

    throw v5

    .line 684
    .restart local v0    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    .restart local v2    # "previousDeletedMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "previousReadMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "previousUnreadMessageIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5d
    :try_start_5d
    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->isExpired()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 685
    iget-object v7, p0, Lcom/urbanairship/richpush/RichPushInbox;->deletedMessageIds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 690
    :cond_6d
    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 691
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 692
    iget-object v7, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 697
    :cond_84
    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 698
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    .line 699
    iget-object v7, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 704
    :cond_9b
    iget-boolean v7, v0, Lcom/urbanairship/richpush/RichPushMessage;->unreadClient:Z

    if-eqz v7, :cond_a9

    .line 705
    iget-object v7, p0, Lcom/urbanairship/richpush/RichPushInbox;->unreadMessages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 707
    :cond_a9
    iget-object v7, p0, Lcom/urbanairship/richpush/RichPushInbox;->readMessages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 710
    .end local v0    # "message":Lcom/urbanairship/richpush/RichPushMessage;
    :cond_b3
    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_5d .. :try_end_b4} :catchall_5a

    .line 712
    if-eqz p1, :cond_b9

    .line 713
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushInbox;->notifyInboxUpdated()V

    .line 715
    :cond_b9
    return-void
.end method

.method public removeListener(Lcom/urbanairship/richpush/RichPushInbox$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/richpush/RichPushInbox$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 278
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 279
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public startInboxActivity()V
    .registers 4

    .prologue
    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.VIEW_RICH_PUSH_INBOX"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    .line 219
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x30000000

    .line 220
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 224
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/messagecenter/MessageCenterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 227
    :cond_2a
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public startMessageActivity(Ljava/lang/String;)V
    .registers 6
    .param p1, "messageId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.VIEW_RICH_PUSH_INBOX"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    .line 241
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x30000000

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "message"

    const/4 v3, 0x0

    .line 243
    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 246
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    :goto_33
    return-void

    .line 250
    :cond_34
    const-string v1, "com.urbanairship.VIEW_RICH_PUSH_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 254
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    const-class v2, Lcom/urbanairship/messagecenter/MessageCenterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 257
    :cond_4c
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_33
.end method

.method protected tearDown()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->removeListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 201
    return-void
.end method
