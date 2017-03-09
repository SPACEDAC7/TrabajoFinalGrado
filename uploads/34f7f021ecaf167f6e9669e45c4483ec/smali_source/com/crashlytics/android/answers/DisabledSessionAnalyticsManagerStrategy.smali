.class Lcom/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy;
.super Ljava/lang/Object;
.source "DisabledSessionAnalyticsManagerStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTimeBasedFileRollOver()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public deleteAllEvents()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public processEvent(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V
    .registers 2
    .param p1, "builder"    # Lcom/crashlytics/android/answers/SessionEvent$Builder;

    .prologue
    .line 18
    return-void
.end method

.method public rollFileOver()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTimeBasedRollOverIfNeeded()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method public sendEvents()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V
    .registers 3
    .param p1, "analyticsSettingsData"    # Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
    .param p2, "protocolAndHostOverride"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method
