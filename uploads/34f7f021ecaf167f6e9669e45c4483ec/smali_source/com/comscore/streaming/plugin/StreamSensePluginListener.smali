.class public interface abstract Lcom/comscore/streaming/plugin/StreamSensePluginListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onGetLabels(Lcom/comscore/streaming/StreamSenseEventType;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/streaming/StreamSenseEventType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPostStateChange(Lcom/comscore/streaming/StreamSenseState;)V
.end method

.method public abstract onPreStateChange(Lcom/comscore/streaming/StreamSenseState;Lcom/comscore/streaming/StreamSenseEventType;Z)Z
.end method
