.class public interface abstract Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader$Callbacks;
.super Ljava/lang/Object;
.source "ShowPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onLoadComplete(Lcom/buzzfeed/showx/showpage/data/model/ShowPage;)V
    .param p1    # Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadError(Ljava/lang/Exception;)V
.end method
