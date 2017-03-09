.class Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 438
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;"
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 441
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;"
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    # getter for: Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    invoke-static {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->access$100(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;->onDrmKeysLoaded()V

    .line 442
    return-void
.end method
