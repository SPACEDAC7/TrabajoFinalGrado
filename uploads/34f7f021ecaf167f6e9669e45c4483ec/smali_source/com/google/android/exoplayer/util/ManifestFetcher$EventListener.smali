.class public interface abstract Lcom/google/android/exoplayer/util/ManifestFetcher$EventListener;
.super Ljava/lang/Object;
.source "ManifestFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/util/ManifestFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onManifestError(Ljava/io/IOException;)V
.end method

.method public abstract onManifestRefreshStarted()V
.end method

.method public abstract onManifestRefreshed()V
.end method
