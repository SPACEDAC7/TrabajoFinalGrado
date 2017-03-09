.class public interface abstract Lcom/google/android/exoplayer/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final STATE_CLOSED:I = 0x1

.field public static final STATE_ERROR:I = 0x0

.field public static final STATE_OPENED:I = 0x3

.field public static final STATE_OPENED_WITH_KEYS:I = 0x4

.field public static final STATE_OPENING:I = 0x2


# virtual methods
.method public abstract close()V
.end method

.method public abstract getError()Ljava/lang/Exception;
.end method

.method public abstract getMediaCrypto()Lcom/google/android/exoplayer/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract open(Lcom/google/android/exoplayer/drm/DrmInitData;)V
.end method

.method public abstract requiresSecureDecoderComponent(Ljava/lang/String;)Z
.end method
