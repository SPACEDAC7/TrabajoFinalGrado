.class Lcom/comscore/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/measurement/Measurement;

.field final synthetic b:Lcom/comscore/utils/OfflineMeasurementsCache;


# direct methods
.method constructor <init>(Lcom/comscore/utils/OfflineMeasurementsCache;Lcom/comscore/measurement/Measurement;)V
    .registers 3

    iput-object p1, p0, Lcom/comscore/utils/c;->b:Lcom/comscore/utils/OfflineMeasurementsCache;

    iput-object p2, p0, Lcom/comscore/utils/c;->a:Lcom/comscore/measurement/Measurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/comscore/utils/c;->b:Lcom/comscore/utils/OfflineMeasurementsCache;

    iget-object v1, p0, Lcom/comscore/utils/c;->a:Lcom/comscore/measurement/Measurement;

    iget-object v2, p0, Lcom/comscore/utils/c;->b:Lcom/comscore/utils/OfflineMeasurementsCache;

    iget-object v2, v2, Lcom/comscore/utils/OfflineMeasurementsCache;->a:Lcom/comscore/analytics/Core;

    invoke-virtual {v2}, Lcom/comscore/analytics/Core;->getMeasurementLabelOrder()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comscore/measurement/Measurement;->retrieveLabelsAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/utils/OfflineMeasurementsCache;->saveEvent(Ljava/lang/String;)V

    return-void
.end method
