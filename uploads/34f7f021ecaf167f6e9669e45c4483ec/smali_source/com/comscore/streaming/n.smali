.class Lcom/comscore/streaming/n;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/comscore/streaming/StreamSenseVideoView;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseVideoView;J)V
    .registers 4

    iput-object p1, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    iput-wide p2, p0, Lcom/comscore/streaming/n;->a:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->e(Lcom/comscore/streaming/StreamSenseVideoView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/streaming/n;->a:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_15
    iget-object v1, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v1}, Lcom/comscore/streaming/StreamSenseVideoView;->f(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    move-result v1

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->g(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->h(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    iget-object v0, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->i(Lcom/comscore/streaming/StreamSenseVideoView;)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_15

    :cond_34
    iget-object v0, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->h(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    iget-object v0, p0, Lcom/comscore/streaming/n;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->d(Lcom/comscore/streaming/StreamSenseVideoView;)V

    goto :goto_31
.end method
