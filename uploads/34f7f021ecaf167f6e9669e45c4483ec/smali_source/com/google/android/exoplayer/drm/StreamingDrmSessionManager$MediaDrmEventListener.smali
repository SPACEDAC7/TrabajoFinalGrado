.class Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .registers 2

    .prologue
    .line 503
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p2, "x1"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;

    .prologue
    .line 503
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/android/exoplayer/drm/ExoMediaDrm;[BII[B)V
    .registers 7
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm",
            "<+TT;>;[BII[B)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    .local p1, "mediaDrm":Lcom/google/android/exoplayer/drm/ExoMediaDrm;, "Lcom/google/android/exoplayer/drm/ExoMediaDrm<+TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v0, v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->sendEmptyMessage(I)Z

    .line 509
    return-void
.end method
