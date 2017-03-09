.class public interface abstract Lcom/buzzfeed/ads/data/VideoApiClient$ResponseListener;
.super Ljava/lang/Object;
.source "VideoApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/ads/data/VideoApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseListener"
.end annotation


# virtual methods
.method public abstract onErrorResponse(Ljava/lang/String;)V
.end method

.method public abstract onResponse(Lcom/buzzfeed/ads/data/VideoResponse;)V
.end method
