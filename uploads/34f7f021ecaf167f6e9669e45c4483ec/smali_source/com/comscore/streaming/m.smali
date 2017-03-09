.class Lcom/comscore/streaming/m;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/comscore/streaming/StreamSenseVideoView;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseVideoView;JLjava/util/HashMap;)V
    .registers 5

    iput-object p1, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    iput-wide p2, p0, Lcom/comscore/streaming/m;->a:J

    iput-object p4, p0, Lcom/comscore/streaming/m;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, "StreamSenseVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEventTimer -> lastPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/comscore/streaming/m;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v2}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Ljava/util/HashMap;

    const-string v1, "ns_ts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v2}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/comscore/streaming/m;->a:J

    sub-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x1f4

    cmp-long v6, v2, v6

    if-ltz v6, :cond_a6

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_7d

    iget-object v4, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v4, v2, v3}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;J)J

    const-string v4, "StreamSenseVideoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToBufferingTotal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/comscore/streaming/m;->b:Ljava/util/HashMap;

    const-string v5, "ns_ts"

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Ljava/util/HashMap;

    const-string v1, "ns_st_bt"

    iget-object v2, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v2}, Lcom/comscore/streaming/StreamSenseVideoView;->b(Lcom/comscore/streaming/StreamSenseVideoView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->c(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    iget-object v0, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    iget-object v1, p0, Lcom/comscore/streaming/m;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v2}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;Ljava/util/HashMap;J)V

    iget-object v0, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->d(Lcom/comscore/streaming/StreamSenseVideoView;)V

    :goto_a5
    return-void

    :cond_a6
    iget-object v0, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->c(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    iget-object v0, p0, Lcom/comscore/streaming/m;->c:Lcom/comscore/streaming/StreamSenseVideoView;

    iget-object v1, p0, Lcom/comscore/streaming/m;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;Ljava/util/HashMap;)V

    goto :goto_a5
.end method
