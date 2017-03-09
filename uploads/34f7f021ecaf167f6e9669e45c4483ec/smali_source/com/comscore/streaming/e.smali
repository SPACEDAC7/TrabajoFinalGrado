.class Lcom/comscore/streaming/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/comscore/streaming/StreamSense;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSense;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/StreamSense;

    iput-object p2, p0, Lcom/comscore/streaming/e;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/comscore/streaming/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/StreamSense;

    iget-object v0, v0, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    sget-object v1, Lcom/comscore/applications/EventType;->HIDDEN:Lcom/comscore/applications/EventType;

    iget-object v2, p0, Lcom/comscore/streaming/e;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/comscore/streaming/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/comscore/applications/ApplicationMeasurement;->newApplicationMeasurement(Lcom/comscore/analytics/Core;Lcom/comscore/applications/EventType;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/applications/ApplicationMeasurement;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/StreamSense;

    iget-object v1, v1, Lcom/comscore/streaming/StreamSense;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getMeasurementDispatcher()Lcom/comscore/measurement/MeasurementDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/comscore/measurement/MeasurementDispatcher;->sendMeasurmement(Lcom/comscore/measurement/Measurement;Z)Z

    return-void
.end method
