.class Lcom/comscore/streaming/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSenseMediaPlayer;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/j;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/streaming/j;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    iget-object v1, p0, Lcom/comscore/streaming/j;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Lcom/comscore/streaming/StreamSenseMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/streaming/j;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->h(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/comscore/streaming/j;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->h(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_20
    return-void
.end method
