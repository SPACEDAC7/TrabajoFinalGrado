.class Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->setOnEventListener(Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;

.field final synthetic val$listener:Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;->this$0:Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;->val$listener:Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .registers 12
    .param p1, "md"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;->val$listener:Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;->this$0:Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;->onEvent(Lcom/google/android/exoplayer/drm/ExoMediaDrm;[BII[B)V

    .line 50
    return-void
.end method
