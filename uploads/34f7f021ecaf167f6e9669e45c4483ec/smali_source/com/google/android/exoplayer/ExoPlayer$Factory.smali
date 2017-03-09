.class public final Lcom/google/android/exoplayer/ExoPlayer$Factory;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final DEFAULT_MIN_BUFFER_MS:I = 0x9c4

.field public static final DEFAULT_MIN_REBUFFER_MS:I = 0x1388


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/google/android/exoplayer/ExoPlayer;
    .registers 4
    .param p0, "rendererCount"    # I

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImpl;

    const/16 v1, 0x9c4

    const/16 v2, 0x1388

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayerImpl;-><init>(III)V

    return-object v0
.end method

.method public static newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;
    .registers 4
    .param p0, "rendererCount"    # I
    .param p1, "minBufferMs"    # I
    .param p2, "minRebufferMs"    # I

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImpl;-><init>(III)V

    return-object v0
.end method
