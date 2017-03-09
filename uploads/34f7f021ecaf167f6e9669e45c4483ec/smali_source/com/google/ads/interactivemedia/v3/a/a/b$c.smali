.class Lcom/google/ads/interactivemedia/v3/a/a/b$c;
.super Lcom/google/ads/interactivemedia/v3/a/a/b$b;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private b:Landroid/media/PlaybackParams;

.field private c:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b$b;-><init>()V

    .line 1302
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->c:F

    .line 1303
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->b:Landroid/media/PlaybackParams;

    if-eqz v0, :cond_f

    .line 1328
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->b:Landroid/media/PlaybackParams;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 1330
    :cond_f
    return-void
.end method


# virtual methods
.method public a(Landroid/media/AudioTrack;Z)V
    .registers 3

    .prologue
    .line 1308
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/a/b$b;->a(Landroid/media/AudioTrack;Z)V

    .line 1309
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->h()V

    .line 1310
    return-void
.end method

.method public a(Landroid/media/PlaybackParams;)V
    .registers 3

    .prologue
    .line 1314
    if-eqz p1, :cond_12

    .line 1315
    :goto_2
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    .line 1316
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->b:Landroid/media/PlaybackParams;

    .line 1317
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->c:F

    .line 1318
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->h()V

    .line 1319
    return-void

    .line 1314
    :cond_12
    new-instance p1, Landroid/media/PlaybackParams;

    invoke-direct {p1}, Landroid/media/PlaybackParams;-><init>()V

    goto :goto_2
.end method

.method public g()F
    .registers 2

    .prologue
    .line 1323
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$c;->c:F

    return v0
.end method
