.class Lcom/comscore/streaming/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSenseMediaPlayer;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_2c

    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->c(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->d(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->f(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    :goto_2b
    return v0

    :cond_2c
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_19

    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->b(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->c(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/comscore/streaming/h;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->e(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V

    goto :goto_19

    :cond_46
    const/4 v0, 0x1

    goto :goto_2b
.end method
