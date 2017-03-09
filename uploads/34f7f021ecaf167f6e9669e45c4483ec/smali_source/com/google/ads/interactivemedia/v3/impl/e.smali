.class public Lcom/google/ads/interactivemedia/v3/impl/e;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
.implements Lcom/google/ads/interactivemedia/v3/impl/af$b;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/google/ads/interactivemedia/v3/impl/g;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/g;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->d:Z

    .line 26
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 27
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->e:Lcom/google/ads/interactivemedia/v3/impl/g;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_24

    .line 80
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->d:Z

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    .line 81
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->start:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->d:Z

    .line 84
    :cond_1f
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->timeupdate:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 86
    :cond_24
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V
    .registers 3

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 90
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .registers 6

    .prologue
    .line 93
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->a:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 96
    return-void
.end method

.method public onEnded()V
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->end:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 56
    return-void
.end method

.method public onError()V
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->error:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 61
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->e:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->c()V

    .line 43
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->pause:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 44
    return-void
.end method

.method public onPlay()V
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->d:Z

    .line 37
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->e:Lcom/google/ads/interactivemedia/v3/impl/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/g;->b()V

    .line 50
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->play:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 51
    return-void
.end method

.method public onVolumeChanged(I)V
    .registers 3

    .prologue
    .line 65
    if-nez p1, :cond_e

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    if-nez v0, :cond_e

    .line 66
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->mute:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    .line 70
    :cond_e
    if-eqz p1, :cond_1c

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    if-eqz v0, :cond_1c

    .line 71
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->unmute:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/e;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$c;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/e;->c:Z

    .line 74
    :cond_1c
    return-void
.end method
