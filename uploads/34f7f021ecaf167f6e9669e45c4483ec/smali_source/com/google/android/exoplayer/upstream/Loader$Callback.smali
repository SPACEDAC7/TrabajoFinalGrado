.class public interface abstract Lcom/google/android/exoplayer/upstream/Loader$Callback;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadCanceled(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
.end method

.method public abstract onLoadCompleted(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V
.end method

.method public abstract onLoadError(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V
.end method
