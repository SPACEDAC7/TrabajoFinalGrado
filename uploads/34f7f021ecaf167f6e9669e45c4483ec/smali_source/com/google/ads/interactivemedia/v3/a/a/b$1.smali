.class Lcom/google/ads/interactivemedia/v3/a/a/b$1;
.super Ljava/lang/Thread;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/a/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/AudioTrack;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/a/a/b;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/a/b;Landroid/media/AudioTrack;)V
    .registers 3

    .prologue
    .line 758
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$1;->b:Lcom/google/ads/interactivemedia/v3/a/a/b;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$1;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$1;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 763
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$1;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_14

    .line 765
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$1;->b:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Lcom/google/ads/interactivemedia/v3/a/a/b;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 767
    return-void

    .line 765
    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$1;->b:Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/a/b;->a(Lcom/google/ads/interactivemedia/v3/a/a/b;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
