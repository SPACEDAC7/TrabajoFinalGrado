.class public Lcom/comscore/applications/AppStartMeasurement;
.super Lcom/comscore/applications/ApplicationMeasurement;


# direct methods
.method protected constructor <init>(Lcom/comscore/analytics/Core;Lcom/comscore/applications/EventType;Ljava/lang/String;Z)V
    .registers 13

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/comscore/applications/ApplicationMeasurement;-><init>(Lcom/comscore/analytics/Core;Lcom/comscore/applications/EventType;Ljava/lang/String;ZZZ)V

    new-instance v0, Lcom/comscore/measurement/Label;

    const-string v1, "ns_ap_gs"

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getFirstInstallId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Lcom/comscore/measurement/Label;)V

    new-instance v0, Lcom/comscore/measurement/Label;

    const-string v1, "ns_ap_install"

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getInstallId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Lcom/comscore/measurement/Label;)V

    new-instance v0, Lcom/comscore/measurement/Label;

    const-string v1, "ns_ap_runs"

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getRunsCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Lcom/comscore/measurement/Label;)V

    if-eqz p4, :cond_5f

    new-instance v0, Lcom/comscore/measurement/Label;

    const-string v1, "ns_ap_csf"

    const-string v2, "1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Lcom/comscore/measurement/Label;)V

    :cond_5f
    const-string v0, "0"

    invoke-static {}, Lcom/comscore/utils/RootDetector;->isDeviceRooted()Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v0, "1"

    :cond_69
    new-instance v1, Lcom/comscore/measurement/Label;

    const-string v2, "ns_ap_jb"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Lcom/comscore/measurement/Label;)V

    new-instance v0, Lcom/comscore/measurement/Label;

    const-string v1, "ns_ap_lastrun"

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getPreviousGenesis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Lcom/comscore/measurement/Label;)V

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getPreviousVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a7

    new-instance v1, Lcom/comscore/measurement/Label;

    const-string v2, "ns_ap_updated"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Lcom/comscore/measurement/Label;)V

    :cond_a7
    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    const-string v1, "exception_ocurrences"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d8

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d8

    new-instance v1, Lcom/comscore/measurement/Label;

    const-string v2, "ns_ap_er"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/comscore/measurement/Label;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v1}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Lcom/comscore/measurement/Label;)V

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    const-string v1, "exception_ocurrences"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->remove(Ljava/lang/String;)V

    :cond_d8
    if-eqz p4, :cond_102

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/InstallReferrerReceiver;->retrieveReferrerLabels(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_102

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ec
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_102

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/comscore/applications/AppStartMeasurement;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :cond_102
    return-void
.end method
