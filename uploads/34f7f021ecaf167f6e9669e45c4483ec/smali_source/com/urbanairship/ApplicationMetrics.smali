.class public Lcom/urbanairship/ApplicationMetrics;
.super Lcom/urbanairship/AirshipComponent;
.source "ApplicationMetrics.java"


# static fields
.field private static final LAST_OPEN_KEY:Ljava/lang/String; = "com.urbanairship.application.metrics.LAST_OPEN"


# instance fields
.field private final activityMonitor:Lcom/urbanairship/ActivityMonitor;

.field private final context:Landroid/content/Context;

.field private final listener:Lcom/urbanairship/ActivityMonitor$Listener;

.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/ActivityMonitor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "activityMonitor"    # Lcom/urbanairship/ActivityMonitor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/urbanairship/ApplicationMetrics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->context:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/urbanairship/ApplicationMetrics$1;

    invoke-direct {v0, p0, p2}, Lcom/urbanairship/ApplicationMetrics$1;-><init>(Lcom/urbanairship/ApplicationMetrics;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    .line 29
    iput-object p3, p0, Lcom/urbanairship/ApplicationMetrics;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    .line 30
    return-void
.end method


# virtual methods
.method public getLastOpenTimeMillis()J
    .registers 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.application.metrics.LAST_OPEN"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected init()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v1, p0, Lcom/urbanairship/ApplicationMetrics;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->addListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 35
    return-void
.end method

.method protected tearDown()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/urbanairship/ApplicationMetrics;->activityMonitor:Lcom/urbanairship/ActivityMonitor;

    iget-object v1, p0, Lcom/urbanairship/ApplicationMetrics;->listener:Lcom/urbanairship/ActivityMonitor$Listener;

    invoke-virtual {v0, v1}, Lcom/urbanairship/ActivityMonitor;->removeListener(Lcom/urbanairship/ActivityMonitor$Listener;)V

    .line 40
    return-void
.end method
