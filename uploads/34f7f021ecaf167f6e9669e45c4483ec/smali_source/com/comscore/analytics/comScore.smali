.class public Lcom/comscore/analytics/comScore;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/comscore/analytics/Core;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/comscore/analytics/Core;

    invoke-direct {v0}, Lcom/comscore/analytics/Core;-><init>()V

    sput-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aggregate(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->AGGREGATE:Lcom/comscore/applications/EventType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static allowLiveTransmission(Lcom/comscore/utils/TransmissionMode;)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->allowLiveTransmission(Lcom/comscore/utils/TransmissionMode;Z)V

    return-void
.end method

.method public static allowOfflineTransmission(Lcom/comscore/utils/TransmissionMode;)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->allowOfflineTransmission(Lcom/comscore/utils/TransmissionMode;Z)V

    return-void
.end method

.method public static disableAutoUpdate()V
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->disableAutoUpdate()V

    return-void
.end method

.method public static enableAutoUpdate()V
    .registers 2

    const/16 v0, 0x3c

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/comscore/analytics/comScore;->enableAutoUpdate(IZ)V

    return-void
.end method

.method public static enableAutoUpdate(I)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/comscore/analytics/comScore;->enableAutoUpdate(IZ)V

    return-void
.end method

.method public static enableAutoUpdate(IZ)V
    .registers 4

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/comscore/analytics/Core;->enableAutoUpdate(IZZ)V

    return-void
.end method

.method public static flushCache()V
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/comscore/analytics/Core;->flush(Z)V

    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoStartLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/Core;->getAutoStartLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoStartLabels()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAutoStartLabels()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheFlushingInterval()J
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheFlushingInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCacheMaxBatchFiles()I
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheMaxBatchFiles()I

    move-result v0

    return v0
.end method

.method public static getCacheMaxFlushesInARow()I
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheMaxFlushesInARow()I

    move-result v0

    return v0
.end method

.method public static getCacheMaxMeasurements()I
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheMaxMeasurements()I

    move-result v0

    return v0
.end method

.method public static getCacheMeasurementExpiry()J
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheMeasurementExpiry()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCacheMinutesToRetry()J
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCacheMinutesToRetry()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCore()Lcom/comscore/analytics/Core;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    return-object v0
.end method

.method public static getCustomerC2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getCustomerC2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorHandlingEnabled()Z
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getErrorHandlingEnabled()Z

    move-result v0

    return v0
.end method

.method public static getGenesis()J
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getGenesis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/Core;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLabels()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getLabels()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveTransmissionMode()Lcom/comscore/utils/TransmissionMode;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getLiveTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    return-object v0
.end method

.method public static getMeasurementLabelOrder()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getMeasurementLabelOrder()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    return-object v0
.end method

.method public static getPixelURL()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getPixelURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPublisherSecret()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getPublisherSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVisitorID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getVisitorId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hidden()V
    .registers 4

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->HIDDEN:Lcom/comscore/applications/EventType;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static hidden(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->HIDDEN:Lcom/comscore/applications/EventType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static isAutoStartEnabled()Z
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isAutoStartEnabled()Z

    move-result v0

    return v0
.end method

.method public static isEnabled()Z
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static isKeepAliveEnabled()Z
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isKeepAliveEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSecure()Z
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isSecure()Z

    move-result v0

    return v0
.end method

.method public static onEnterForeground()V
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->onEnterForeground()V

    return-void
.end method

.method public static onExitForeground()V
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->onExitForeground()V

    return-void
.end method

.method public static onUserInteraction()V
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->onUserInteraction()V

    return-void
.end method

.method public static onUxActive()V
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->onUxActive()V

    return-void
.end method

.method public static onUxInactive()V
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->onUxInactive()V

    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/Core;->setAppContext(Landroid/content/Context;)V

    return-void
.end method

.method public static setAppName(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setAppName(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAutoStartEnabled(Z)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setAutoStartEnabled(ZZ)V

    return-void
.end method

.method public static setAutoStartLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0, p1}, Lcom/comscore/analytics/Core;->setAutoStartLabel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAutoStartLabels(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/Core;->setAutoStartLabels(Ljava/util/HashMap;)V

    return-void
.end method

.method public static setCacheFlushingInterval(J)V
    .registers 4

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/comscore/analytics/Core;->setCacheFlushingInterval(JZ)V

    return-void
.end method

.method public static setCacheMaxBatchFiles(I)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setCacheMaxBatchFiles(IZ)V

    return-void
.end method

.method public static setCacheMaxFlushesInARow(I)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setCacheMaxFlushesInARow(IZ)V

    return-void
.end method

.method public static setCacheMaxMeasurements(I)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setCacheMaxMeasurements(IZ)V

    return-void
.end method

.method public static setCacheMeasurementExpiry(I)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setCacheMeasurementExpiry(IZ)V

    return-void
.end method

.method public static setCacheMinutesToRetry(I)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setCacheMinutesToRetry(IZ)V

    return-void
.end method

.method public static setCustomerC2(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setCustomerC2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setDebug(Z)V
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/Core;->setDebug(Z)V

    return-void
.end method

.method public static setEnabled(Z)V
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/Core;->setEnabled(Z)V

    return-void
.end method

.method public static setErrorHandlingEnabled(Z)V
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/Core;->setErrorHandlingEnabled(Z)V

    return-void
.end method

.method public static setKeepAliveEnabled(Z)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setKeepAliveEnabled(ZZ)V

    return-void
.end method

.method public static setLabel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/comscore/analytics/Core;->setLabel(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setLabels(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setLabels(Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static setMeasurementLabelOrder([Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setMeasurementLabelOrder([Ljava/lang/String;Z)V

    return-void
.end method

.method public static setOfflineURL(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0, p0}, Lcom/comscore/analytics/Core;->setOfflineURL(Ljava/lang/String;)V

    return-void
.end method

.method public static setPixelURL(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setPixelURL(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPublisherSecret(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setPublisherSecret(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSecure(Z)V
    .registers 3

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/comscore/analytics/Core;->setSecure(ZZ)V

    return-void
.end method

.method public static start()V
    .registers 4

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static start(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->START:Lcom/comscore/applications/EventType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static update()V
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->update()V

    return-void
.end method

.method public static view()V
    .registers 4

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->VIEW:Lcom/comscore/applications/EventType;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static view(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->VIEW:Lcom/comscore/applications/EventType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public static waitForTasks()V
    .registers 1

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getTaskExecutor()Lcom/comscore/utils/task/TaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/task/TaskExecutor;->waitForTasks()V

    return-void
.end method


# virtual methods
.method public isAutoUpdateEnabled()Z
    .registers 2

    sget-object v0, Lcom/comscore/analytics/comScore;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->isAutoUpdateEnabled()Z

    move-result v0

    return v0
.end method
