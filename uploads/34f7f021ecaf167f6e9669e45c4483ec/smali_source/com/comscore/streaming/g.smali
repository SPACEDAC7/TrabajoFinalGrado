.class Lcom/comscore/streaming/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSenseMediaPlayer;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0, p1}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Lcom/comscore/streaming/StreamSenseMediaPlayer;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/comscore/streaming/g;->a:Lcom/comscore/streaming/StreamSenseMediaPlayer;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseMediaPlayer;->a(Lcom/comscore/streaming/StreamSenseMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_16
    return-void
.end method
