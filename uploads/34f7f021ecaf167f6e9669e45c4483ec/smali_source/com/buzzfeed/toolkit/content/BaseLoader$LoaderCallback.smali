.class public interface abstract Lcom/buzzfeed/toolkit/content/BaseLoader$LoaderCallback;
.super Ljava/lang/Object;
.source "BaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/content/BaseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onLoadComplete()V
.end method
