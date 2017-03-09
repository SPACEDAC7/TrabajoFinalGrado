.class public Lcom/urbanairship/analytics/Analytics;
.super Lcom/urbanairship/AirshipComponent;
.source "Analytics.java"


# static fields
.field private static final ADVERTISING_ID_AUTO_TRACKING_KEY:Ljava/lang/String; = "com.urbanairship.analytics.ADVERTISING_ID_TRACKING"

.field private static final ANALYTICS_ENABLED_KEY:Ljava/lang/String; = "com.urbanairship.analytics.ANALYTICS_ENABLED"

.field private static final ASSOCIATED_IDENTIFIERS_KEY:Ljava/lang/String; = "com.urbanairship.analytics.ASSOCIATED_IDENTIFIERS"

.field private static final KEY_PREFIX:Ljava/lang/String; = "com.urbanairship.analytics"

.field private static listener:Lcom/urbanairship/ActivityMonitor$Listener;


# instance fields
.field private final activityMonitor:Lcom/urbanairship/ActivityMonitor;

.field private analyticsJobHandler:Lcom/urbanairship/analytics/AnalyticsJobHandler;

.field private final analyticsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final associatedIdentifiersLock:Ljava/lang/Object;

.field private final configOptions:Lcom/urbanairship/AirshipConfigOptions;

.field private final context:Landroid/content/Context;

.field private conversionMetadata:Ljava/lang/String;

.field private conversionSendId:Ljava/lang/String;

.field private currentScreen:Ljava/lang/String;

.field private inBackground:Z

.field private final jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

.field private final platform:I

.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

.field private previousScreen:Ljava/lang/String;

.field private screenStartTime:J

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;ILcom/urbanairship/ActivityMonitor;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Lcom/urbanairship/AirshipConfigOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "platform"    # I
    .param p5, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-static {p1}, Lcom/urbanairship/job/JobDispatcher;->shared(Landroid/content/Context;)Lcom/urbanairship/job/JobDispatcher;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;ILcom/urbanairship/job/JobDispatcher;Lcom/urbanairship/ActivityMonitor;)V

    .line 73
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;ILcom/urbanairship/job/JobDispatcher;Lcom/urbanairship/ActivityMonitor;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "options"    # Lcom/urbanairship/AirshipConfigOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "platform"    # I
    .param p5, "jobDispatcher"    # Lcom/urbanairship/job/JobDispatcher;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->analyticsListeners:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->associatedIdentifiersLock:Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->context:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    .line 92
    iput-object p3, p0, Lcom/urbanairship/analytics/Analytics;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 93
    iput p4, p0, Lcom/urbanairship/analytics/Analytics;->platform:I

    .line 94
    iput-object p5, p0, Lcom/urbanairship/analytics/Analytics;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    .line 95
    iput-object p6, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/analytics/Analytics;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/analytics/Analytics;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->associatedIdentifiersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/PreferenceDataStore;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/analytics/Analytics;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    return-object v0
.end method

.method private applyListeners(Lcom/urbanairship/analytics/Event;)V
    .registers 7
    .param p1, "event"    # Lcom/urbanairship/analytics/Event;

    .prologue
    .line 509
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->analyticsListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/AnalyticsListener;

    .line 510
    .local v0, "listener":Lcom/urbanairship/analytics/AnalyticsListener;
    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_52

    :cond_23
    :goto_23
    packed-switch v1, :pswitch_data_5c

    goto :goto_b

    .line 512
    :pswitch_27
    instance-of v1, p1, Lcom/urbanairship/analytics/CustomEvent;

    if-eqz v1, :cond_b

    move-object v1, p1

    .line 513
    check-cast v1, Lcom/urbanairship/analytics/CustomEvent;

    invoke-interface {v0, v1}, Lcom/urbanairship/analytics/AnalyticsListener;->onCustomEventAdded(Lcom/urbanairship/analytics/CustomEvent;)V

    goto :goto_b

    .line 510
    :sswitch_32
    const-string v4, "custom_event"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v1, 0x0

    goto :goto_23

    :sswitch_3c
    const-string v4, "region_event"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v1, 0x1

    goto :goto_23

    .line 517
    :pswitch_46
    instance-of v1, p1, Lcom/urbanairship/location/RegionEvent;

    if-eqz v1, :cond_b

    move-object v1, p1

    .line 518
    check-cast v1, Lcom/urbanairship/location/RegionEvent;

    invoke-interface {v0, v1}, Lcom/urbanairship/analytics/AnalyticsListener;->onRegionEventAdded(Lcom/urbanairship/location/RegionEvent;)V

    goto :goto_b

    .line 525
    .end local v0    # "listener":Lcom/urbanairship/analytics/AnalyticsListener;
    :cond_51
    return-void

    .line 510
    :sswitch_data_52
    .sparse-switch
        -0x4d990a71 -> :sswitch_3c
        0x2ac5484c -> :sswitch_32
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_27
        :pswitch_46
    .end packed-switch
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/urbanairship/analytics/AnalyticsListener;)V
    .registers 4
    .param p1, "analyticsListener"    # Lcom/urbanairship/analytics/AnalyticsListener;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->analyticsListeners:Ljava/util/List;

    monitor-enter v1

    .line 488
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->analyticsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public addEvent(Lcom/urbanairship/analytics/Event;)V
    .registers 7
    .param p1, "event"    # Lcom/urbanairship/analytics/Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->isValid()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 154
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics - Invalid event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 182
    :goto_1e
    return-void

    .line 158
    :cond_1f
    invoke-virtual {p0}, Lcom/urbanairship/analytics/Analytics;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_40

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics disabled - ignoring event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1e

    .line 163
    :cond_40
    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/urbanairship/analytics/Event;->createEventPayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "eventPayload":Ljava/lang/String;
    if-nez v1, :cond_62

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics - Failed to add event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 168
    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analytics - Adding event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 169
    const-string v2, "com.urbanairship.analytics.ADD"

    invoke-static {v2}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    const-class v3, Lcom/urbanairship/analytics/Analytics;

    .line 170
    invoke-virtual {v2, v3}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_TYPE"

    .line 171
    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/job/Job$Builder;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_ID"

    .line 172
    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/job/Job$Builder;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_DATA"

    .line 173
    invoke-virtual {v2, v3, v1}, Lcom/urbanairship/job/Job$Builder;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_TIME_STAMP"

    .line 174
    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/job/Job$Builder;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_SESSION_ID"

    iget-object v4, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    .line 175
    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/job/Job$Builder;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    const-string v3, "EXTRA_EVENT_PRIORITY"

    .line 176
    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getPriority()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/job/Job$Builder;->putExtra(Ljava/lang/String;I)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v0

    .line 179
    .local v0, "addEventJob":Lcom/urbanairship/job/Job;
    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-virtual {v2, v0}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/Analytics;->applyListeners(Lcom/urbanairship/analytics/Event;)V

    goto/16 :goto_1e
.end method

.method public editAssociatedIdentifiers()Lcom/urbanairship/analytics/AssociatedIdentifiers$Editor;
    .registers 2

    .prologue
    .line 396
    new-instance v0, Lcom/urbanairship/analytics/Analytics$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/Analytics$2;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    return-object v0
.end method

.method public getAssociatedIdentifiers()Lcom/urbanairship/analytics/AssociatedIdentifiers;
    .registers 6

    .prologue
    .line 426
    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->associatedIdentifiersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 428
    :try_start_3
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.analytics.ASSOCIATED_IDENTIFIERS"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/analytics/AssociatedIdentifiers;->fromJson(Ljava/lang/String;)Lcom/urbanairship/analytics/AssociatedIdentifiers;
    :try_end_f
    .catch Lcom/urbanairship/json/JsonException; {:try_start_3 .. :try_end_f} :catch_12
    .catchall {:try_start_3 .. :try_end_f} :catchall_26

    move-result-object v1

    :try_start_10
    monitor-exit v2

    .line 434
    :goto_11
    return-object v1

    .line 429
    :catch_12
    move-exception v0

    .line 430
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    const-string v1, "Unable to parse associated identifiers."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v3, "com.urbanairship.analytics.ASSOCIATED_IDENTIFIERS"

    invoke-virtual {v1, v3}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 434
    new-instance v1, Lcom/urbanairship/analytics/AssociatedIdentifiers;

    invoke-direct {v1}, Lcom/urbanairship/analytics/AssociatedIdentifiers;-><init>()V

    monitor-exit v2

    goto :goto_11

    .line 435
    .end local v0    # "e":Lcom/urbanairship/json/JsonException;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public getConversionMetadata()Ljava/lang/String;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->conversionMetadata:Ljava/lang/String;

    return-object v0
.end method

.method public getConversionSendId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->conversionSendId:Ljava/lang/String;

    return-object v0
.end method

.method getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/urbanairship/analytics/Analytics;->startNewSession()V

    .line 102
    new-instance v0, Lcom/urbanairship/analytics/Analytics$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/Analytics$1;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    sput-object v0, Lcom/urbanairship/analytics/Analytics;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 114
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->addListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 116
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    invoke-virtual {v0}, Lcom/urbanairship/ActivityMonitor;->isAppForegrounded()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/analytics/Analytics;->onForeground(J)V

    .line 119
    :cond_20
    return-void
.end method

.method public isAppInForeground()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAutoTrackAdvertisingIdEnabled()Z
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.ADVERTISING_ID_TRACKING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 355
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->configOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.analytics.ANALYTICS_ENABLED"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method onBackground(J)V
    .registers 6
    .param p1, "timeMS"    # J

    .prologue
    const/4 v1, 0x0

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    .line 308
    invoke-virtual {p0, v1}, Lcom/urbanairship/analytics/Analytics;->trackScreen(Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/urbanairship/analytics/AppBackgroundEvent;

    invoke-direct {v0, p1, p2}, Lcom/urbanairship/analytics/AppBackgroundEvent;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 312
    invoke-virtual {p0, v1}, Lcom/urbanairship/analytics/Analytics;->setConversionSendId(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0, v1}, Lcom/urbanairship/analytics/Analytics;->setConversionMetadata(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method onForeground(J)V
    .registers 6
    .param p1, "timeMS"    # J

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/urbanairship/analytics/Analytics;->startNewSession()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->inBackground:Z

    .line 285
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->currentScreen:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 286
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->previousScreen:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->trackScreen(Ljava/lang/String;)V

    .line 290
    :cond_f
    invoke-virtual {p0}, Lcom/urbanairship/analytics/Analytics;->isAutoTrackAdvertisingIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 291
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    const-string v1, "com.urbanairship.com.analytics.UPDATE_ADVERTISING_ID"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/analytics/Analytics;

    .line 292
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 296
    :cond_2a
    new-instance v0, Lcom/urbanairship/analytics/AppForegroundEvent;

    invoke-direct {v0, p1, p2}, Lcom/urbanairship/analytics/AppForegroundEvent;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 297
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
    .line 129
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->analyticsJobHandler:Lcom/urbanairship/analytics/AnalyticsJobHandler;

    if-nez v0, :cond_f

    .line 130
    new-instance v0, Lcom/urbanairship/analytics/AnalyticsJobHandler;

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-direct {v0, v1, p1, v2}, Lcom/urbanairship/analytics/AnalyticsJobHandler;-><init>(Landroid/content/Context;Lcom/urbanairship/UAirship;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->analyticsJobHandler:Lcom/urbanairship/analytics/AnalyticsJobHandler;

    .line 133
    :cond_f
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->analyticsJobHandler:Lcom/urbanairship/analytics/AnalyticsJobHandler;

    invoke-virtual {v0, p2}, Lcom/urbanairship/analytics/AnalyticsJobHandler;->performJob(Lcom/urbanairship/job/Job;)I

    move-result v0

    return v0
.end method

.method public recordLocation(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/urbanairship/analytics/Analytics;->recordLocation(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;I)V

    .line 191
    return-void
.end method

.method public recordLocation(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;I)V
    .registers 10
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Lcom/urbanairship/location/LocationRequestOptions;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "updateType"    # I

    .prologue
    .line 204
    if-nez p2, :cond_13

    .line 205
    const/4 v3, -0x1

    .line 206
    .local v3, "requestedAccuracy":I
    const/4 v4, -0x1

    .line 216
    .local v4, "distance":I
    :goto_4
    new-instance v0, Lcom/urbanairship/analytics/LocationEvent;

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v5

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/urbanairship/analytics/LocationEvent;-><init>(Landroid/location/Location;IIIZ)V

    .line 217
    .local v0, "event":Lcom/urbanairship/analytics/LocationEvent;
    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 218
    return-void

    .line 208
    .end local v0    # "event":Lcom/urbanairship/analytics/LocationEvent;
    .end local v3    # "requestedAccuracy":I
    .end local v4    # "distance":I
    :cond_13
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->getMinDistance()F

    move-result v1

    float-to-int v4, v1

    .line 209
    .restart local v4    # "distance":I
    invoke-virtual {p2}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 210
    const/4 v3, 0x1

    .restart local v3    # "requestedAccuracy":I
    goto :goto_4

    .line 212
    .end local v3    # "requestedAccuracy":I
    :cond_21
    const/4 v3, 0x2

    .restart local v3    # "requestedAccuracy":I
    goto :goto_4
.end method

.method public removeAnalyticsListener(Lcom/urbanairship/analytics/AnalyticsListener;)V
    .registers 4
    .param p1, "analyticsListener"    # Lcom/urbanairship/analytics/AnalyticsListener;

    .prologue
    .line 498
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->analyticsListeners:Ljava/util/List;

    monitor-enter v1

    .line 499
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->analyticsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setAutoTrackAdvertisingIdEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 364
    iget v0, p0, Lcom/urbanairship/analytics/Analytics;->platform:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleAdsDependencyAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    .line 365
    const-string v0, "Analytics - Advertising ID auto-tracking could not be enabled due to a missing Google Ads dependency."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 376
    :cond_12
    :goto_12
    return-void

    .line 369
    :cond_13
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.analytics.ADVERTISING_ID_TRACKING"

    invoke-virtual {v0, v1, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 371
    if-eqz p1, :cond_12

    .line 372
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    const-string v1, "com.urbanairship.com.analytics.UPDATE_ADVERTISING_ID"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/analytics/Analytics;

    .line 373
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    goto :goto_12
.end method

.method public setConversionMetadata(Ljava/lang/String;)V
    .registers 4
    .param p1, "metadata"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Analytics - Setting conversion metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 261
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->conversionMetadata:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setConversionSendId(Ljava/lang/String;)V
    .registers 4
    .param p1, "sendId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Analytics - Setting conversion send ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->conversionSendId:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 333
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.analytics.ANALYTICS_ENABLED"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 336
    .local v0, "previousValue":Z
    if-eqz v0, :cond_22

    if-nez p1, :cond_22

    .line 337
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    const-string v2, "com.urbanairship.analytics.DELETE_ALL"

    invoke-static {v2}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    const-class v3, Lcom/urbanairship/analytics/Analytics;

    .line 338
    invoke-virtual {v2, v3}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v2

    .line 337
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 342
    :cond_22
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.analytics.ANALYTICS_ENABLED"

    invoke-virtual {v1, v2, p1}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Z)V

    .line 343
    return-void
.end method

.method startNewSession()V
    .registers 3

    .prologue
    .line 320
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Analytics - New session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method protected tearDown()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    sget-object v1, Lcom/urbanairship/analytics/Analytics;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->removeListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/analytics/Analytics;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 125
    return-void
.end method

.method public trackScreen(Ljava/lang/String;)V
    .registers 10
    .param p1, "screen"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 445
    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->currentScreen:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->currentScreen:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 469
    :goto_c
    return-void

    .line 450
    :cond_d
    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->currentScreen:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 451
    new-instance v1, Lcom/urbanairship/analytics/ScreenTrackingEvent;

    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->currentScreen:Ljava/lang/String;

    iget-object v3, p0, Lcom/urbanairship/analytics/Analytics;->previousScreen:Ljava/lang/String;

    iget-wide v4, p0, Lcom/urbanairship/analytics/Analytics;->screenStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/urbanairship/analytics/ScreenTrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 454
    .local v1, "ste":Lcom/urbanairship/analytics/ScreenTrackingEvent;
    iget-object v2, p0, Lcom/urbanairship/analytics/Analytics;->currentScreen:Ljava/lang/String;

    iput-object v2, p0, Lcom/urbanairship/analytics/Analytics;->previousScreen:Ljava/lang/String;

    .line 457
    invoke-virtual {p0, v1}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    .line 460
    .end local v1    # "ste":Lcom/urbanairship/analytics/ScreenTrackingEvent;
    :cond_27
    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->currentScreen:Ljava/lang/String;

    .line 462
    if-eqz p1, :cond_46

    .line 463
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/urbanairship/analytics/Analytics;->analyticsListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/analytics/AnalyticsListener;

    .line 464
    .local v0, "listener":Lcom/urbanairship/analytics/AnalyticsListener;
    invoke-interface {v0, p1}, Lcom/urbanairship/analytics/AnalyticsListener;->onScreenTracked(Ljava/lang/String;)V

    goto :goto_36

    .line 468
    .end local v0    # "listener":Lcom/urbanairship/analytics/AnalyticsListener;
    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/urbanairship/analytics/Analytics;->screenStartTime:J

    goto :goto_c
.end method

.method public uploadEvents()V
    .registers 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    const-string v1, "com.urbanairship.analytics.SEND"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/analytics/Analytics;

    .line 477
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v1

    .line 476
    invoke-virtual {v0, v1}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 479
    return-void
.end method
