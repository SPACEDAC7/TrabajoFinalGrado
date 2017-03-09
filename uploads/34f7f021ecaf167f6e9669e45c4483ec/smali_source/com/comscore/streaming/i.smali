.class Lcom/comscore/streaming/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSenseMediaPlayer;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Lcom/comscore/streaming/StreamSenseMediaPlayer;Z)Z

    iget-object v0, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0, p1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b(Lcom/comscore/streaming/StreamSenseMediaPlayer;Landroid/media/MediaPlayer;)V

    :cond_13
    iget-object v0, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/comscore/streaming/i;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->g(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_24
    return-void
.end method
