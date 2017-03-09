.class Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;
.super Landroid/os/AsyncTask;
.source "ExperimentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->loadABeagleData(Landroid/content/Context;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/buzzfeed/androidabframework/util/ReturnCode;",
        ">;"
    }
.end annotation


# instance fields
.field responseTime:J

.field final synthetic this$0:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

.field final synthetic val$TAG:Ljava/lang/String;

.field final synthetic val$callback:Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/buzzfeed/androidabframework/controller/ExperimentManager;Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->this$0:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    iput-object p2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$TAG:Ljava/lang/String;

    iput-object p4, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$callback:Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/buzzfeed/androidabframework/util/ReturnCode;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 386
    iget-object v7, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->this$0:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    # invokes: Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getABeagle()Lcom/buzzfeed/androidabframework/data/ABeagle;
    invoke-static {v7}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->access$000(Lcom/buzzfeed/androidabframework/controller/ExperimentManager;)Lcom/buzzfeed/androidabframework/data/ABeagle;

    move-result-object v0

    .line 387
    .local v0, "aBeagle":Lcom/buzzfeed/androidabframework/data/ABeagle;
    iget-object v7, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/buzzfeed/androidabframework/data/ABeagle;->loadABeagleData(Landroid/content/Context;)Lcom/buzzfeed/androidabframework/util/ReturnCode;

    move-result-object v6

    .line 388
    .local v6, "returnCode":Lcom/buzzfeed/androidabframework/util/ReturnCode;
    invoke-virtual {v0}, Lcom/buzzfeed/androidabframework/data/ABeagle;->getResponseTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->responseTime:J

    .line 389
    sget-object v7, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    if-ne v6, v7, :cond_193

    .line 390
    # getter for: Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->sExperimentManager:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;
    invoke-static {}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->access$100()Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    move-result-object v8

    monitor-enter v8

    .line 391
    :try_start_1b
    new-instance v7, Lcom/buzzfeed/androidabframework/util/CodeTimer;

    invoke-direct {v7}, Lcom/buzzfeed/androidabframework/util/CodeTimer;-><init>()V

    invoke-virtual {v7}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->start()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v3

    .line 393
    .local v3, "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    invoke-virtual {v0}, Lcom/buzzfeed/androidabframework/data/ABeagle;->getABeagleDataMap()Ljava/util/Map;

    move-result-object v2

    .line 394
    .local v2, "aBeagleDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/ABeagleData;>;"
    iget-object v7, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->this$0:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    invoke-virtual {v7}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->getExperimentList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_32
    :goto_32
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_161

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 395
    .local v4, "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    invoke-virtual {v4}, Lcom/buzzfeed/androidabframework/data/Experiment;->getName()Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, "experimentName":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 397
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;

    .line 398
    .local v1, "aBeagleData":Lcom/buzzfeed/androidabframework/data/ABeagleData;
    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->error:Ljava/lang/String;

    if-eqz v9, :cond_7a

    .line 400
    iget-object v9, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in experiment data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->error:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 431
    .end local v1    # "aBeagleData":Lcom/buzzfeed/androidabframework/data/ABeagleData;
    .end local v2    # "aBeagleDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/ABeagleData;>;"
    .end local v3    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .end local v4    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    .end local v5    # "experimentName":Ljava/lang/String;
    :catchall_77
    move-exception v7

    monitor-exit v8
    :try_end_79
    .catchall {:try_start_1b .. :try_end_79} :catchall_77

    throw v7

    .line 401
    .restart local v1    # "aBeagleData":Lcom/buzzfeed/androidabframework/data/ABeagleData;
    .restart local v2    # "aBeagleDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/ABeagleData;>;"
    .restart local v3    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    .restart local v4    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    .restart local v5    # "experimentName":Ljava/lang/String;
    :cond_7a
    :try_start_7a
    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->version:Ljava/lang/Integer;

    if-eqz v9, :cond_87

    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->version:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_ac

    .line 403
    :cond_87
    iget-object v9, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in experiment data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; Invalid version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->version:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 406
    :cond_ac
    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->version:Ljava/lang/Integer;

    if-eqz v9, :cond_cb

    invoke-virtual {v4}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVersion()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_c6

    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->version:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4}, Lcom/buzzfeed/androidabframework/data/Experiment;->getVersion()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_cb

    .line 407
    :cond_c6
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/buzzfeed/androidabframework/data/Experiment;->setSelectedVariant(Ljava/lang/String;Ljava/lang/Integer;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 410
    :cond_cb
    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->experimentId:Ljava/lang/Integer;

    invoke-virtual {v4, v9}, Lcom/buzzfeed/androidabframework/data/Experiment;->setId(Ljava/lang/Integer;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 411
    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->version:Ljava/lang/Integer;

    invoke-virtual {v4, v9}, Lcom/buzzfeed/androidabframework/data/Experiment;->setVersion(Ljava/lang/Integer;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 412
    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->resolved:Ljava/lang/Boolean;

    invoke-virtual {v4, v9}, Lcom/buzzfeed/androidabframework/data/Experiment;->setResolved(Ljava/lang/Boolean;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 414
    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantName:Ljava/lang/String;

    if-eqz v9, :cond_ea

    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantName:Ljava/lang/String;

    if-eqz v9, :cond_129

    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantName:Ljava/lang/String;

    .line 415
    invoke-virtual {v4, v9}, Lcom/buzzfeed/androidabframework/data/Experiment;->hasVariant(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_129

    .line 416
    :cond_ea
    iget-object v9, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantName:Ljava/lang/String;

    iget-object v10, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantId:Ljava/lang/Integer;

    invoke-virtual {v4, v9, v10}, Lcom/buzzfeed/androidabframework/data/Experiment;->setSelectedVariant(Ljava/lang/String;Ljava/lang/Integer;)Lcom/buzzfeed/androidabframework/data/Experiment;

    .line 417
    iget-object v9, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set selected variant: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantId:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 420
    :cond_129
    iget-object v9, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected variant not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/buzzfeed/androidabframework/data/ABeagleData;->selectedVariantId:Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 426
    .end local v1    # "aBeagleData":Lcom/buzzfeed/androidabframework/data/ABeagleData;
    .end local v4    # "experiment":Lcom/buzzfeed/androidabframework/data/Experiment;
    .end local v5    # "experimentName":Ljava/lang/String;
    :cond_161
    iget-object v7, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Experiment data updated from ABeagle data in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->stop()Lcom/buzzfeed/androidabframework/util/CodeTimer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/buzzfeed/androidabframework/util/CodeTimer;->getElapsedMilliseconds()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v7, Lcom/buzzfeed/androidabframework/util/ReturnCode;->SucceededNormally:Lcom/buzzfeed/androidabframework/util/ReturnCode;

    if-ne v6, v7, :cond_192

    .line 429
    iget-object v7, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->this$0:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    iget-object v9, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->saveExperimentsToCache(Landroid/content/Context;)V

    .line 431
    :cond_192
    monitor-exit v8
    :try_end_193
    .catchall {:try_start_7a .. :try_end_193} :catchall_77

    .line 433
    .end local v2    # "aBeagleDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/buzzfeed/androidabframework/data/ABeagleData;>;"
    .end local v3    # "codeTimer":Lcom/buzzfeed/androidabframework/util/CodeTimer;
    :cond_193
    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 381
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->doInBackground([Ljava/lang/Void;)Lcom/buzzfeed/androidabframework/util/ReturnCode;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/buzzfeed/androidabframework/util/ReturnCode;)V
    .registers 6
    .param p1, "returnCode"    # Lcom/buzzfeed/androidabframework/util/ReturnCode;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->this$0:Lcom/buzzfeed/androidabframework/controller/ExperimentManager;

    iget-object v1, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->val$callback:Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;

    iget-wide v2, p0, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->responseTime:J

    # invokes: Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->executeCallback(Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V
    invoke-static {v0, v1, p1, v2, v3}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager;->access$200(Lcom/buzzfeed/androidabframework/controller/ExperimentManager;Lcom/buzzfeed/androidabframework/controller/ExperimentManager$CallbackInterface;Lcom/buzzfeed/androidabframework/util/ReturnCode;J)V

    .line 439
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 381
    check-cast p1, Lcom/buzzfeed/androidabframework/util/ReturnCode;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/androidabframework/controller/ExperimentManager$1;->onPostExecute(Lcom/buzzfeed/androidabframework/util/ReturnCode;)V

    return-void
.end method
