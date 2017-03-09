.class Lcom/google/ads/interactivemedia/v3/a/a/b$2;
.super Ljava/lang/Thread;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/a/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/a/b;Landroid/media/AudioTrack;)V
    .registers 3

    .prologue
    .line 791
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$2;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/a/b$2;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 795
    return-void
.end method
