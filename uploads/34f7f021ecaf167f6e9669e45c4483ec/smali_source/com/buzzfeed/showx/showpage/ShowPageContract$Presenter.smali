.class public interface abstract Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter;
.super Ljava/lang/Object;
.source "ShowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/showx/showpage/ShowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
    }
.end annotation


# virtual methods
.method public abstract attachView(Lcom/buzzfeed/showx/showpage/ShowPageContract$UpdatableView;)V
.end method

.method public abstract detachView()V
.end method

.method public abstract handleConnectivityChange()V
.end method

.method public abstract refreshSubscribeCard()V
.end method

.method public abstract setPresenterCallbacks(Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;)V
    .param p1    # Lcom/buzzfeed/showx/showpage/ShowPageContract$Presenter$Callbacks;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
